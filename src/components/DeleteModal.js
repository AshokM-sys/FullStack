import React from 'react';
import axios from 'axios';
import { Modal, Button } from 'react-bootstrap';

const DeleteModal = ({ item, onClose, onDelete }) => {
    const handleDelete = async () => {
        await axios.post('/delete', { id: item.id });
        onDelete();
        onClose();
    };

    return (
        <Modal show onHide={onClose}>
            <Modal.Header closeButton>
                <Modal.Title>Delete Confirmation</Modal.Title>
            </Modal.Header>
            <Modal.Body>
                <p>Are you sure you want to delete this record?</p>
            </Modal.Body>
            <Modal.Footer>
                <Button variant="secondary" onClick={onClose}>Cancel</Button>
                <Button variant="danger" onClick={handleDelete}>Delete</Button>
            </Modal.Footer>
        </Modal>
    );
};

export default DeleteModal;
