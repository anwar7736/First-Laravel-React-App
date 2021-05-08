import React, {Component, Fragment} from 'react';
import {Card, Col, Container, Row, Button} from "react-bootstrap";
import Axios from "axios";
import WentWrong from "../components/wentWrong";
import Loading from "../components/loadingDiv";

class CourseFeature extends Component {

    constructor() {
        super();
        this.state={
            DataList:[],
            isLoading : true,
            isError : false,
        }
    }

    componentDidMount() {
        Axios.get("/getCourseFeatures").then((response)=>{
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
      if(this.state.isLoading==true && this.state.isError==false)
      {
        return <Loading/>
      } 
      if(this.state.isLoading==false && this.state.isError==false)
      {
      const myList = this.state.DataList;
      const myData = myList.map(function(data){
           return     <Col lg={3} md={3} sm={12}>
                         <Card className="text-center mt-2">
                            <Card.Img className="item-logo" src={data.img} />
                            <Card.Body>
                              <Card.Title className="title-text"> {data.title}</Card.Title>
                              <Card.Text className="des-text">
                                {data.des}
                              </Card.Text>
                            </Card.Body>
                          </Card>
                      </Col> 
      })
        return(
              <Fragment>

                <Container fluid="md" className="mt-4">
                    <Row>
                      {myData}
                    </Row>
                </Container>
              </Fragment>
            );
      }
      if(this.state.isError==true && this.state.isLoading==false)
      {
        return <WentWrong/>
      } 
    }
}

export default CourseFeature;
