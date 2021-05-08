import React, {Component, Fragment} from 'react';
import {Route, Switch} from "react-router-dom";
import HomePage from "../pages/HomePage";
import CoursePlan from "../pages/CoursePlan";
import Registration from "../pages/Registration";
import FreeClass from "../pages/FreeClass";
import NotFound from "../components/NotFound";

class Router extends Component {
    render() {
        return (
            <Fragment>
                <Switch>
                    <Route exact path="/" component={HomePage}/>
                    <Route exact path="/courseplan" component={CoursePlan}/>
                    <Route exact path="/registration" component={Registration}/>
                    <Route exact path="/freeclass" component={FreeClass}/>
                    <Route exact component={NotFound}/>
                </Switch>
            </Fragment>
        );
    }
}
export default Router;
