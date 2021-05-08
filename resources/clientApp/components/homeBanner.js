import React, {Component, Fragment} from 'react';
import {Button, Col, Container, Row} from "react-bootstrap";
import ReactLogo from '../../images/loading.svg'
class HomeBanner extends Component {
    render() {
        return (
            <Fragment>

                <Container fluid={true} className="bg-dark">
                    <Row>
                        <Col lg={6} className="top-div text-center" md={6} sm={12}>
                            <p className="text-center m-0 top-title text-light">React JS  </p>
                            <p className="text-center m-0 top-subtitle text-success">Learn With Anwar</p>
                            <p className="text-center m-0 top-subtitle text-danger">Learn Something Good, Do Something Better</p>
                            <Button className="btn login-btn m-2">Login</Button>
                        </Col>
                        <Col lg={6} className="top-div text-center" md={6} sm={12}>
                                <img className="react-logo" src={ReactLogo}/>
                        </Col>
                    </Row>
                </Container>

            </Fragment>
        );
    }
}

export default HomeBanner;
