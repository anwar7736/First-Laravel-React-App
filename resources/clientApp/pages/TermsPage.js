import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import Terms from "../components/Terms";
import Footer from "../components/Footer";


class TemsPage extends React.Component {
    render() {
        return (
            <Fragment>
                    <Menu title="Terms & Conditions"/><br/>
                       <Terms/>
                       <Footer/>
            </Fragment>
        );
    }
}

export default TemsPage;
