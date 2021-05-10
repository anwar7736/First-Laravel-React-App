import React, {Component, Fragment} from 'react';
import {Card, Col, Container, Row} from "react-bootstrap";
import Axios from "axios";
import LoadingDiv from "./loadingDiv";
import WentWrong from "./wentWrong";

class MoreSeries extends Component {

    constructor() {
        super();
        this.state={
            DataList:[],
            isLoading:true,
            isError:false,
        }
    }


    componentDidMount() {
        Axios.get("/getMoreSeries").then((response)=>{
            if(response.status==200){
                this.setState({DataList:response.data,isLoading:false})
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
            const mylist = this.state.DataList;
            const myView=mylist.map(mylist=>{
                return (
                    <Col md={3} className="p-2">
                        <Card className="card text-center">
                            <Card.Body className="card-body">
                                <img className="item-logo" src={mylist['img']}/><br/>
                                <h5 className="title-text mt-2">{mylist['title']}</h5>
                                <a target="_blank" className="btn btn-outline-danger btn-sm" href={mylist['url']}>Join Now</a>
                            </Card.Body>
                        </Card>
                    </Col>
                );
            });
            return (
                <Fragment>
                    <Container className="text-center section-margin">
                        <h5 className="title-text mt-2"><b>Find More</b></h5>
                        <p className="des-text">Get other tutorial series by Anwar Hossain</p>
                        <Row>
                            {myView} 
                        </Row>
                    </Container>
                </Fragment>
            );
        }



    }
}

export default MoreSeries;
