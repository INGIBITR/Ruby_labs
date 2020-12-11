import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from "../components/Home";
import Products from "../components/Products";
import Product from "../components/Product";

export default (
    <Router>
        <Switch>
            <Route path="/" exact component={Home} />
            <Route path="/products" exact component={Products} />
            <Route path="/product/:id" exact component={Product} />
        </Switch>
    </Router>
);