import React, {Component, Fragment} from 'react';
import {Col, Container, Row} from "react-bootstrap";
import Axios from "axios";
import WentWrong from "../components/wentWrong";
import Loading from "../components/loadingDiv";
import ReactHtmlParser from 'react-html-parser';

class Privacy extends React.Component {
	 constructor() {
        super();
        this.state={
            DataList:[],
            isLoading : true,
            isError : false,
        }
    }
    componentDidMount() {
        Axios.get("/getInformations").then((response)=>{
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
    	const myData = this.state.DataList;
        return (
            <Fragment>
                   <Container style={{marginTop:100, marginBottom:100}}>
                   		<Row>
                   			<Col lg={12} md={12} sm={12}>
                   				<p>{ReactHtmlParser(myData[0]['privacy'])}</p>

                   			</Col>

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

export default Privacy;
