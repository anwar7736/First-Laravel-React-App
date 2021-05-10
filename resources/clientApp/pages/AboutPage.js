import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import About from "../components/About";
import Footer from "../components/Footer";


class AboutPage extends React.Component {
    render() {
        return (
            <Fragment>
                    <Menu title="About"/><br/>
                       <About/>
                       <Footer/>
            </Fragment>
        );
    }
}

export default AboutPage;
