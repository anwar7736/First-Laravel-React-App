import React, {Component, Fragment} from 'react';
import {Col, Container, Row} from "react-bootstrap";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faFacebook,faYoutube} from "@fortawesome/free-brands-svg-icons";
import  {faEnvelope,faPhone,faMapMarkedAlt} from "@fortawesome/free-solid-svg-icons";
import {NavLink} from "react-router-dom";


class Footer extends Component {
    render() {
        return (
            <Fragment>
                <Container fluid={true} className="jumbotron  jumbotron-fluid bg-light mb-0">
                    <Container className="container">
                        <Row>
                            <Col sm={6} lg={3} md={3} >
                                <h3 className="title-text">Follow Me</h3>
                                <hr/>
                                    <p><a target="_blank" href="//www.facebook.com/anwarhossain7736" className="footer-link">  <FontAwesomeIcon icon={faFacebook} /> Facebook</a></p>
                                    <p><a target="_blank" href="//www.youtube.com/RabbilHasanRupom" className="footer-link">  <FontAwesomeIcon icon={faYoutube} /> YouTube </a></p>
                            </Col>
                            <Col sm={6} lg={3} md={3} >
                                <h3 className="title-text">My Address</h3>
                                <hr/>
                                    <p className="des-text">  <FontAwesomeIcon icon={faMapMarkedAlt} /> Palli Biddut, Ashulia, Savar, Dhaka-1349</p>
                                    <p className="des-text">  <FontAwesomeIcon icon={faPhone} /> +8801794-030592</p>
                                    <p className="des-text">  <FontAwesomeIcon icon={faEnvelope} /> anwarhossain7736@gmail.com</p>
                            </Col>
                            <Col sm={6} lg={3} md={3} >
                                <h3 className="title-text">Information</h3>
                                <hr/>
                                 <NavLink className="footer-link" to="/about">About Me</NavLink><br/>
                            </Col>
                            <Col sm={6} lg={3} md={3} >
                                <h3 className="title-text">Legal</h3>
                                <hr/>
                                <NavLink className="footer-link" to="/refund">Refund Policy</NavLink><br/>
                                <NavLink className="footer-link" to="/terms">Terms & Conditions</NavLink><br/>
                                <NavLink className="footer-link" to="/privacy">Privacy Policy</NavLink><br/>
                            </Col>
                        </Row>
                    </Container>
                </Container>
                <Container fluid={true} className="text-white m-0 text-center p-3 custom-bg">
                    <p className="credit-text my-2 ">All Rights Reserved By Md Anwar Hossain © 2020-2021</p>
                </Container>
            </Fragment>
        );
    }
}

export default Footer;
