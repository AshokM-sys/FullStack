import React, { useState } from 'react';
import axios from 'axios';
import { Modal, Button, Form } from 'react-bootstrap';

const EditModal = ({ item, onClose, onUpdate }) => {
    const [name, setName] = useState(item.name);
    const [status, setStatus] = useState(item.status);

    const handleSave = async () => {
        await axios.post('/update', { id: item.id, name, status });
        onUpdate();
        onClose();
    };

    return (
        <Modal show onHide={onClose}>
            <Modal.Header closeButton>
                <Modal.Title>Edit Data</Modal.Title>
            </Modal.Header>
            <Modal.Body>
                <Form>
                    <Form.Group>
                        <Form.Label>Name</Form.Label>
                        <Form.Control
                            type="text"
                            value={name}
                            onChange={(e) => setName(e.target.value)}
                            required
                        />
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Status</Form.Label><br />
                        <Form.Check
                            type="radio"
                            label="Active"
                            name="status"
                            value="active"
                            checked={status === 'active'}
                            onChange={() => setStatus('active')}
                        />
                        <Form.Check
                            type="radio"
                            label="Inactive"
                            name="status"
                            value="inactive"
                            checked={status === 'inactive'}
                            onChange={() => setStatus('inactive')}
                        />
                    </Form.Group>
                </Form>
            </Modal.Body>
            <Modal.Footer>
                <Button variant="secondary" onClick={onClose}>Close</Button>
                <Button variant="primary" onClick={handleSave}>Save Changes</Button>
            </Modal.Footer>
        </Modal>
    );
};

export default EditModal;
