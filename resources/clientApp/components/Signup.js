import React, {Component, Fragment} from 'react';
import {Col, Container, Row, Form, Button, Card} from "react-bootstrap";
import bKashLogo from '../../images/BKASH-LOGO.png'
import Axios from "axios";
import WentWrong from "../components/wentWrong";
import LoadingDiv from "./loadingDiv";  
import ReactHtmlParser from 'react-html-parser';
import cogoToast from 'cogo-toast';

class Signup extends React.Component {
	 constructor() {
        super();
        this.state={
            DataList:[],
            isLoading:true,
            isError:false,
            name : '',
            email : '',
            phone : '',
            password : '',
            bkash_number : '',
            bkash_TrxID : '',
        }
    }
    onChange=(e)=>{
      this.setState({[e.target.name] : e.target.value})
    }
    Registration=(e)=>{
      e.preventDefault();
         if(this.state.name==''){
            cogoToast.warn('Name field is required!');
        }
        else if(this.state.email==''){
            cogoToast.warn('Email field is required!');
        }
        else if(this.state.phone==''){
            cogoToast.warn('Phone field is required!')
        }
         else if(this.state.password==''){
            cogoToast.warn('Password field is required!')
        } 
        else if(this.state.bkash_number==''){
            cogoToast.warn('Bkash Number field is required!')
        }
         else if(this.state.bkash_TrxID==''){
            cogoToast.warn('Bkash TrxID is required!')
        }
      let jsonObject = {
        name: this.state.name, 
        email:this.state.email,
        phone:this.state.phone,
        password:this.state.password,
        bkash_number:this.state.bkash_number,
        bkash_TrxID:this.state.bkash_TrxID
      }
      Axios.post('http://127.0.0.1:8000/api/registrations',jsonObject
        ).then((response)=>{
                if(response.status==200){
                   cogoToast.success(response.data);
                }
                else{
                       cogoToast.error(response.data);
                }

        }).catch((error)=>{
            cogoToast.error(response.data);
        })
    }
    componentDidMount() {
        Axios.get("/getPaymentGuide").then((response)=>{
                if(response.status==200){
                  this.setState({DataList: response.data, isLoading: false})
                }
                else{
                      this.setState({isLoading:false,isError:true})
                }

        }).catch((error)=>{
            this.setState({isLoading:false,isError:true})
        })
    }



    render() {

        if(this.state.isLoading===true){
            return (
                <LoadingDiv/>
            )
        }

        else if(this.state.isError===true){
            return (
                <WentWrong/>
            )
        }
        else{

            const myData=this.state.DataList;

            return (
                <Fragment>
                    <Container>
                        <Row>
                        <Card>
                            <Card.Body className="py-5">
                               <Col lg={6} md={6} sm={12} className="">
                                <img className="bkash-logo" src={bKashLogo} /><br/>
                                <p className="text-justify des-text">{ ReactHtmlParser(myData[0]['des']) }</p>
                               </Col>
                                 <h5 className="text-danger">COURSE REGISTRATION</h5><br/>
                                 <Col lg={6} md={6} sm={12} className="">
                                  <Form onSubmit={this.Registration}>
                                      <Form.Group controlId="" className="mb-3">
                                        <Form.Control name="name" onChange={this.onChange} type="text" placeholder="Your Name" />
                                      </Form.Group>
                                      <Form.Group controlId="" className="mb-3">
                                        <Form.Control name="email" onChange={this.onChange} className=" ml-0" type="email" placeholder="Enter Email" />
                                      </Form.Group>
                                      <Form.Group controlId="" className="mb-3">
                                        <Form.Control name="phone" onChange={this.onChange} className=" ml-0" type="text" placeholder="Mobile No" />
                                      </Form.Group>
                                      <Form.Group controlId="" className="mb-3">
                                        <Form.Control name="password" onChange={this.onChange} className=" ml-0" type="password" placeholder="Password" />
                                      </Form.Group>
                                      <Form.Group controlId="" className="mb-3">
                                        <Form.Control name="bkash_number" onChange={this.onChange} className=" ml-0" type="text" placeholder="Bkash Mobile No" />
                                      </Form.Group>
                                      <Form.Group controlId="" className="mb-3">
                                        <Form.Control name="bkash_TrxID" onChange={this.onChange} className=" ml-0" type="text" placeholder="Bkash TrxID" />
                                      </Form.Group>
                                      <Button variant="success" type="submit">
                                        Submit
                                      </Button>
                                  </Form>
                            </Col>
                            </Card.Body>
                          </Card>
                           
                        </Row>

                    </Container>

                </Fragment>
            );
        }

    }
}

export default Signup;
