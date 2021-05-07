import React, {Component, Fragment} from 'react';
import {Route, Switch} from 'react-router-dom';
import Home from '../components/Home';
import About from '../components/About';
import Contact from '../components/Contact';

class Routes extends Component{
	render(){
		return(
				<Fragment>
					  <Switch>
			                <Route exact path="/" component={Home}/>
			                <Route exact path="/about" component={About}/>
			                <Route exact path="/contact" component={Contact}/>
			                <Route component={NotFound}/>
		              </Switch>
				</Fragment>
			);
	}
}
export default Routes;