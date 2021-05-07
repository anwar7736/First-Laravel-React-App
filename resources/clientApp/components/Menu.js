import React, {Component, Fragment} from 'react';
import {Nav, Navbar} from 'react-bootstrap';
class Menu extends React.Component{
	render(){
		return (

				<Fragment>
						<Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
						  <Navbar.Brand href="#home">React-Bootstrap</Navbar.Brand>
						  <Navbar.Toggle aria-controls="responsive-navbar-nav" />
						  <Navbar.Collapse id="responsive-navbar-nav">
						    <Nav className="mr-auto">
						      <Nav.Link to="/">Home</Nav.Link>
						      <Nav.Link to="/">About</Nav.Link>
						      <Nav.Link to="/">Contact</Nav.Link>
						      <Nav.Link to="/">Services</Nav.Link>
						    </Nav>
						    <Nav>
						    </Nav>
						  </Navbar.Collapse>
						</Navbar>
				</Fragment>

			   );
	}
}
export default Menu;