import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Navbar from './views/Navbar';  // Adjust the import path if necessary
import FormComponent from './components/FormComponent';

const App = () => {
    return (
        <Router>
            <div>
                <Navbar />
                <Routes>
                    <Route path="/form" element={<FormComponent />} />
                    {/* Define other routes as needed */}
                </Routes>
            </div>
        </Router>
    );
};

export default App;
