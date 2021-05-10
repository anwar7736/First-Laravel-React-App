import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import CoursePlanHome from "../components/CoursePlanHome";
import Footer from "../components/Footer";
class CoursePlanPage extends Component {
    render() {
        return (
            <Fragment>
                <Menu title="Course Plan"/><br/>
                <CoursePlanHome/>
                <Footer/>
            </Fragment>
        );
    }
}

export default CoursePlanPage;
