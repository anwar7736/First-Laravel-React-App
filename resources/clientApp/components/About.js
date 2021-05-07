import React, {Component, Fragment} from 'react';
import {Button} from 'react-bootstrap';
class About extends React.Component{
	onClick=()=>{
		alert('You are logged in!');
	}
	render(){
		return (

				<Fragment>
						
						<h1 class="homeTitle">Welcome to our About Page</h1>
						<Button onClick={this.onClick} variant="success">Login</Button>
				</Fragment>

			   );
	}
}
export default About;