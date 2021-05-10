import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import Signup from "../components/Signup";
import Footer from "../components/Footer";
class RegistrationPage extends Component {
    render() {
        return (
            <Fragment>
               <Menu title="Sign Up"/><br/>
               <Signup/>
               <Footer/>
            </Fragment>
        );
    }
}

export default RegistrationPage;
