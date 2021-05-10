import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import FreeClassHome from "../components/FreeClassHome";
import Footer from "../components/Footer";
class FreeClassPage extends Component {
    render() {
        return (
            <Fragment>
                <Menu title="Free Class"/><br/>
                <FreeClassHome/>
                <Footer/>
            </Fragment>
        );
    }
}

export default FreeClassPage;
