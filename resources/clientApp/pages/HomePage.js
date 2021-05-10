import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import HomeBanner from "../components/homeBanner";
import CourseFeature from "../components/courseFeature";
import CoursePlanHome from "../components/CoursePlanHome";
import PaymentGuide from "../components/PaymentGuide";
import FreeClassHome from "../components/FreeClassHome";
import MoreSeries from "../components/MoreSeries";
import Footer from "../components/Footer";


class HomePage extends React.Component {
    render() {
        return (
            <Fragment>
                     <Menu title="Home"/><br/>
                     <HomeBanner/>
                     <CourseFeature/>
                     <CoursePlanHome/>
                     <PaymentGuide/>
                     <FreeClassHome/>
                     <MoreSeries/>
                     <Footer/>
            </Fragment>
        );
    }
}

export default HomePage;
