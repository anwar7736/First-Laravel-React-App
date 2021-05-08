import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";

class NotFound extends Component{
	render(){
		return(
				<Fragment>
					   <Menu/><br/>
			          <div className="mt-5">
			          	 <h1 className="text-danger">Error : 404 page not found</h1>
			          </div>
				</Fragment>
			);
	}
}
export default NotFound;