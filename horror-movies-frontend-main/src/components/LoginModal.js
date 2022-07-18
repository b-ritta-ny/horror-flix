import React from "react";
import { connect } from 'react-redux';
import { updateLoginForm } from "../actions/loginForm";
import { login } from "../actions/currentUser";
import { Close } from '@material-ui/icons';
import { withRouter, Link } from 'react-router-dom';
import { openOrCloseModal } from '../actions/openOrCloseModal';
import { showOrHideSignupModal } from '../actions/signupModal';

import "./Modal.css";

const Login = (props) => {

    const handleChange = event => {
        const { name, value } = event.target
        const updatedFormData = {
            ...props.loginForm,
            [name]: value
        }
        
        props.updateLoginForm(updatedFormData)
    }

    const handleSubmit = event => {
        event.preventDefault();
        props.login(props.loginForm, props.history);
    }

    const showSignup = () => {
        props.showOrHideSignupModal();
        props.openOrCloseModal()
    };

    return (
        <div className="modalBackground">
            
            <div className="modalContainer">

                <div className="first_row">
                    <div className="title">
                        Log in
                    </div><br/><br/>

                    <div className="loginModalCloseButton">
                        <button onClick={ props.openOrCloseModal }><Close/></button>
                    </div>
                </div>


                <div className="body">
                    <form onSubmit={handleSubmit}>
                        <label>Username</label><br/>
                        <input type="text" name="username" value={props.loginForm.username} onChange={handleChange} />
                  
                        <br/>
                        <label>Password</label><br/>
                        <input type="text" name="password" value={props.loginForm.password} onChange={handleChange} />
                        <br/><br/>

                        <input className="submit-button" type="submit" />
                    </form>
                </div>

                <div className="footer">
                    <Link to="/signup" onClick={ showSignup }>Create Account</Link>

                    {/* <button className="primary_button" onClick={showSignup}>Create Account</button>

                    { props.clickedSignup && <SignupModal/> } */}
                </div>
            </div>
        </div>
    )
}

const mapStateToProps = state => {
    return {
        loginForm: state.loginForm,
        clickedSignup: state.signupModal
    }
}

export default withRouter(connect(mapStateToProps, { updateLoginForm, login, openOrCloseModal, showOrHideSignupModal })(Login));

//history is a mutable prop
//it's an object, which means it's pass-by reference
//which means you can grab it and pass it along




//passed closeModal in props from Home component