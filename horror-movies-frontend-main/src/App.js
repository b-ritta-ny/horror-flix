import React from 'react';
import './App.css';
import NavBar from './components/NavBar';
import LoginModal from './components/LoginModal';
import Home from './components/Home';
import ContentContainer from './components/ContentContainer';
import SignupModal from './components/SignupModal';
import NewMovieForm from './components/NewMovieForm';
import SearchBar from './components/SearchBar';
import About from './components/About';
import Logoff from './components/About';
import Footer from './components/Footer';
import IndividualMovieShow from './components/IndividualMovieShow';
import { connect } from 'react-redux';
import { getCurrentUser } from './actions/currentUser';
import { Route, 
        Switch, 
        withRouter } from 'react-router-dom';

class App extends React.Component {

  componentDidMount() {
    this.props.getCurrentUser()
  }

  //when the homepage loads, it will grab current user along with all movies if not logged in.

  render() {
    const { loggedIn } = this.props
    return (
      <div className="page-container">

        <div className="content-wrap">
          <NavBar/>
            <Switch>
              <Route exact path="/" render={(props)=> loggedIn ? <ContentContainer /> : <Home/> }/>

              <Route exact path="/login" component={LoginModal}/>

              <Route exact path="/signup" component={SignupModal}/>

              <Route exact path="/logoff" component={Logoff}/>

              <Route exact path="/about" component={About}/>

              <Route exact path="/search" component={SearchBar}/>

              <Route exact path="/horror_movies" component={ContentContainer}/>

              <Route exact path="/horror_movies/new" component={NewMovieForm}/>

              <Route exact path="/horror_movies/:slug" component={IndividualMovieShow}/>
            </Switch>
        </div>
          
          <Footer/>
      </div>
    );
  }
}

const mapStateToProps = state => {
  return ({
    loggedIn: !!state.currentUser
  })
}

export default withRouter(connect(mapStateToProps, { getCurrentUser })(App));
