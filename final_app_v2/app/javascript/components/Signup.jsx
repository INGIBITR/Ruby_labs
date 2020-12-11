import React, { Component } from 'react';
import axios from 'axios'
import { Link } from "react-router-dom";
class Signup extends Component {

    // password_confirmation attribute,
    // for bcrypt in Rails

    // errors attribute ,
    // to handle response errors from the server
    state = {
        username: '',
        email: '',
        password: '',
        password_confirmation: '',
        errors: ''
    }

    handleChange = (event) => {

        const { name, value } = event.target

        this.setState({
            [name]: value
        })

    };

    handleSubmit = (event) => {
        event.preventDefault()
    };

    render() {

        const { username, email, password, password_confirmation } = this.state

        return (
            <div>
                <h1>Sign Up</h1>
                <form onSubmit={this.handleSubmit}>
                    <input
                        placeholder="username"
                        type="text"
                        name="username"
                        value={username}
                        onChange={this.handleChange}
                    />
                    <input
                        placeholder="email"
                        type="text"
                        name="email"
                        value={email}
                        onChange={this.handleChange}
                    />
                    <input
                        placeholder="password"
                        type="password"
                        name="password"
                        value={password}
                        onChange={this.handleChange}
                    />
                    <input
                        placeholder="password confirmation"
                        type="password"
                        name="password_confirmation"
                        value={password_confirmation}
                        onChange={this.handleChange}
                    />

                    <button placeholder="submit" className="btn btn-lg custom-button" type="submit">
                        Sign Up
                    </button>
                    <div>
                        <Link
                            to="/login"
                            className="btn btn-lg custom-button"
                            role="button"
                        >
                            Login
        </Link>
                    </div>
                </form>
            </div>
        );
    }
}
export default Signup;