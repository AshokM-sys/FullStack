import React, { useState } from 'react';
import axios from 'axios';

const FormComponent = ({ onDataSubmit }) => {
    const [name, setName] = useState('');
    const [status, setStatus] = useState('active');

    const handleSubmit = async (event) => {
        event.preventDefault();
        await axios.post('/submit', { name, status });
        setName('');
        setStatus('active');
        onDataSubmit();
    };

    return (
        <div className="card card-primary">
            <div className="card-header">
                <h3 className="card-title">Submit Data</h3>
            </div>
            <form onSubmit={handleSubmit}>
                <div className="card-body">
                    <div className="form-group">
                        <label htmlFor="name">Name:</label>
                        <input
                            type="text"
                            className="form-control"
                            id="name"
                            value={name}
                            onChange={(e) => setName(e.target.value)}
                            required
                        />
                    </div>
                    <div className="form-group">
                        <label>Status:</label><br />
                        <div className="btn-group btn-group-toggle" role="group" aria-label="Status">
                            <label className="btn btn-success">
                                <input
                                    type="radio"
                                    name="status"
                                    value="active"
                                    checked={status === 'active'}
                                    onChange={() => setStatus('active')}
                                /> Active
                            </label>
                            <label className="btn btn-success">
                                <input
                                    type="radio"
                                    name="status"
                                    value="inactive"
                                    checked={status === 'inactive'}
                                    onChange={() => setStatus('inactive')}
                                /> Inactive
                            </label>
                        </div>
                        <br />
                        <button type="submit" className="btn btn-primary mt-2">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    );
};

export default FormComponent;
