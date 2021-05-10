import React, {Component, Fragment} from 'react';
import {Route, Switch} from "react-router-dom";
import HomePage from "../pages/HomePage";
import CoursePlanPage from "../pages/CoursePlanPage";
import RegistrationPage from "../pages/RegistrationPage";
import FreeClassPage from "../pages/FreeClassPage";
import AboutPage from "../pages/AboutPage";
import RefundPage from "../pages/RefundPage";
import TermsPage from "../pages/TermsPage";
import PrivacyPage from "../pages/PrivacyPage";
import NotFound from "../components/NotFound";

class Router extends Component {
    render() {
        return (
            <Fragment>
                <Switch>
                    <Route exact path="/" component={HomePage}/>
                    <Route exact path="/courseplan" component={CoursePlanPage}/>
                    <Route exact path="/registration" component={RegistrationPage}/>
                    <Route exact path="/freeclass" component={FreeClassPage}/>
                    <Route exact path="/about" component={AboutPage}/>
                    <Route exact path="/refund" component={RefundPage}/>
                    <Route exact path="/terms" component={TermsPage}/>
                    <Route exact path="/privacy" component={PrivacyPage}/>
                    <Route exact component={NotFound}/>
                </Switch>
            </Fragment>
        );
    }
}
export default Router;
