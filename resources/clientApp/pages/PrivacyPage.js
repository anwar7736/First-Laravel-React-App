import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import Privacy from "../components/Privacy";
import Footer from "../components/Footer";


class PrivacyPage extends React.Component {
    render() {
        return (
            <Fragment>
                    <Menu title="Privacy Policy"/><br/>
                       <Privacy/>
                       <Footer/>
            </Fragment>
        );
    }
}

export default PrivacyPage;
