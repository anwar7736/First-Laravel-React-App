import React, {Component, Fragment} from 'react';
import {Nav, Navbar} from "react-bootstrap";
import "../../css/style.css";
import {NavLink} from "react-router-dom";
class Menu extends Component {
    render() {
        return (
            <Fragment>
                <title>{this.props.title}</title>
                <Navbar className="fixed-top" variant="light" expand="lg">
                    <Navbar.Brand><NavLink className="nav-font" to="/" >Anwar Hossain</NavLink></Navbar.Brand>
                    <Navbar.Toggle aria-controls="basic-navbar-nav" />
                    <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="mr-auto">
                            <NavLink className="nav-font" to="/" >Home</NavLink>
                            <NavLink className="nav-font"  to="/courseplan">Course Plan</NavLink>
                            <NavLink className="nav-font"  to="/registration">Registration</NavLink>
                            <NavLink className="nav-font" to="/freeclass"  >Free Class</NavLink>
                        </Nav>
                    </Navbar.Collapse>
                </Navbar>
            </Fragment>
        );
    }
}

export default Menu;
