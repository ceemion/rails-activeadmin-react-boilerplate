import React, { Component } from 'react';
import logo from './../logo.svg';
import './../App.css';

class Home extends Component {
  constructor() {
    super();

    this.state = {
      name: 'Ceemion'
    };

    this.sampleApiCall = this.sampleApiCall.bind(this);
  }

  fetch(endpoint) {
    return window.fetch(endpoint)
      .then(response => response.json())
      .catch(error => console.log(error));
  }

  sampleApiCall() {
    this.fetch('/api/sample_endpoint')
      .then(data => this.setState({data: data}))
  }

  render() {
    let { name } = this.state;

    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React, {name}</h1>
        </header>
        <p className="App-intro">
          To get started, edit <code>src/pages/Home.js</code> and watch this page reload.
        </p>
      </div>
    )
  }
}

export default Home;
