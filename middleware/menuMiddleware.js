const db = require('../db/db');

const loadMenu = async (req, res, next) => {
    try {
        const results = await db.query('SELECT id, name, link, parent_id, level FROM menu_items ORDER BY parent_id, id');
        const menu = buildMenu(results);
        
        const userRole = req.session?.user?.position; // Ensure session data is available
        const userName = req.session?.user?.fname;   // Get the first name for display
        
        if (userRole) {
            res.locals.menu = filterMenuByRole(menu, userRole);
            res.locals.userName = userName; // Pass the user's name to the view
        } else {
            res.locals.menu = []; // Default to empty menu if no role is found
        }

        next();
    } catch (error) {
        console.error('Database query error:', error);
        next(error); // Pass the error to the next middleware
    }
};


// Function to build a hierarchical menu structure
function buildMenu(items) {
    const menu = [];
    const lookup = {};

    items.forEach(item => {
        lookup[item.id] = { ...item, children: [] };
    });

    items.forEach(item => {
        if (item.parent_id === 0) {
            menu.push(lookup[item.id]); // Top-level items
        } else if (lookup[item.parent_id]) {
            lookup[item.parent_id].children.push(lookup[item.id]); // Nested items
        }
    });

    console.log('Menu structure:', menu);
    return menu;
}

// Function to filter menu based on user role
function filterMenuByRole(menu, role) {
    const adminRoles = ['Admin', 'Super Admin'];

    // Always include the Logout item
    const filteredMenu = menu.filter(item => item.name === 'Logout');

    if (adminRoles.includes(role)) {
        return [...menu, ...filteredMenu.filter(item => !menu.includes(item))]; // All items for Admins
    }

    if (role === 'Employee') {
        const employeeItems = menu.filter(item => item.name === 'Employee Details'); // Filter for Employees
        return [...employeeItems, ...filteredMenu];
    }

    return filteredMenu; // Return only Logout for other roles
}

module.exports = loadMenu;
