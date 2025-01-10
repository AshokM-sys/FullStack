import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Table, Button } from 'react-bootstrap';
import EditModal from './EditModal';
import DeleteModal from './DeleteModal';

const DataTable = () => {
    const [data, setData] = useState([]);
    const [editItem, setEditItem] = useState(null);
    const [deleteItem, setDeleteItem] = useState(null);

    useEffect(() => {
        const fetchData = async () => {
            const response = await axios.get('/fetchData');
            setData(response.data);
        };
        fetchData();
    }, []);

    const handleEdit = (item) => {
        setEditItem(item);
    };

    const handleDelete = (item) => {
        setDeleteItem(item);
    };

    const refreshData = async () => {
        const response = await axios.get('/fetchData');
        setData(response.data);
    };

    return (
        <div>
            <Table striped bordered hover>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    {data.map(item => (
                        <tr key={item.id}>
                            <td>{item.name}</td>
                            <td>{item.status}</td>
                            <td>
                                <Button variant="warning" onClick={() => handleEdit(item)}>Edit</Button>
                                <Button variant="danger" onClick={() => handleDelete(item)}>Delete</Button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </Table>
            {editItem && <EditModal item={editItem} onClose={() => setEditItem(null)} onUpdate={refreshData} />}
            {deleteItem && <DeleteModal item={deleteItem} onClose={() => setDeleteItem(null)} onDelete={refreshData} />}
        </div>
    );
};

export default DataTable;
