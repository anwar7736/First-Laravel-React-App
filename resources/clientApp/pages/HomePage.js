import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import HomeBanner from "../components/homeBanner";
import CourseFeature from "../components/courseFeature";


class HomePage extends React.Component {
    render() {
        return (
            <Fragment>
                    <Menu/><br/>
                       <HomeBanner/>
                       <CourseFeature/>
            </Fragment>
        );
    }
}

export default HomePage;
