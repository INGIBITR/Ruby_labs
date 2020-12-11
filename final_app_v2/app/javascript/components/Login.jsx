import React, { Component } from 'react';
import { Link } from "react-router-dom";
import { BrowserRouter, Switch, Route } from 'react-router-dom'
import Signup from "../components/Signup";
class Login extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            login: this.login,
            password: this.password,
        };

        this.onChange = this.onChange.bind(this);
        this.onSubmit = this.onSubmit.bind(this);
    }
    state = {
        login: '',
        password: '',
        errors: ''
    }

    handleChange = (event) => {
        const { name, value } = event.target

        this.setState({
            [name]: value
        })

    };

    onSubmit(event) {
        event.preventDefault();
        const {
            match: {
                params: { login,
                    password }
            }
        } = this.props;
        const { login,
            password } = this.state;
        const body = {
            login,
            password
        };
        const url = `/api/v1/auth/login/`;

        fetch(url)
            .then(response => {
                if (response.ok) {
                    return response.json();
                }
                throw new Error("Network response was not ok.");
            })

        const token = document.querySelector('meta[name="csrf-token"]').content;
        fetch(url, {
            method: "POST",
            headers: {
                "X-CSRF-Token": token,
                "Content-Type": "application/json"
            },
            body: JSON.stringify(body)
        })
            .then(response => this.setState({ product: response }))
            .then(() => this.props.history.push("/products"));


    }
    render() {
        const { login, password } = this.state

        return (
            <div>
                <h1>Log In</h1>
                <form onSubmit={this.onSubmit}>
                    <input
                        placeholder="login"
                        type="text"
                        name="login"
                        value={login}
                        onChange={this.handleChange}
                    />
                    <input
                        placeholder="password"
                        type="password"
                        name="password"
                        value={password}
                        onChange={this.handleChange}
                    />
                    <button placeholder="submit" type="submit">
                        Log In
                    </button>
                    <div>
                        <Link
                            to="/signup"
                            className="btn btn-lg custom-button"
                            role="button"
                        >
                            Sign up
        </Link>
                    </div>

                </form>
            </div>
        );
    }
}
export default Login;