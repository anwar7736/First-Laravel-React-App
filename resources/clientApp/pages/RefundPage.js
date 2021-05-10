import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import Refund from "../components/Refund";
import Footer from "../components/Footer";


class RefundPage extends React.Component {
    render() {
        return (
            <Fragment>
                    <Menu title="Refund Policy"/><br/>
                       <Refund/>
                       <Footer/>
            </Fragment>
        );
    }
}

export default RefundPage;
