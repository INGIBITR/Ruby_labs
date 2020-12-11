import React from "react";
import { Link } from "react-router-dom";

export default () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
        <h1 className="display-4">Food Recipes</h1>
        <p className="lead">
          <table>
            <thead>
              <tr>
                <th>Title</th>
                <th>Price</th>
                <th>Amount</th>
                <th colspan="3"></th>
              </tr>
            </thead>

            <tbody>

              <tr>
                <td></td>
                <td></td>
                <td></td>

                <td></td>
              </tr>

            </tbody>
          </table>

        </p>
        <hr className="my-4" />


        <Link
          to="/recipes"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Recipes
        </Link>
      </div>
    </div>
  </div>
);