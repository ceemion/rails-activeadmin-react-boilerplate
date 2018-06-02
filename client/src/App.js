import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { Container, Header, Segment, Button, Icon, Dimmer, Loader, Divider } from 'semantic-ui-react';

class App extends Component {
  constructor() {
    super();

    this.state = {};

    this.getDrinks = this.getDrinks.bind(this);
    this.getDrink = this.getDrink.bind(this);
  }

  componentDidMount() {
    this.getDrinks()
  }

  fetch(endpoint) {
    return window.fetch(endpoint)
      .then(response => response.json())
      .catch(error => console.log(error));
  }

  getDrinks() {
    this.fetch('/api/drinks')
      .then(drinks => {
        if (drinks.length) {
          this.setState({drinks: drinks});
          this.getDrink(drinks[0].id)
        }
        else {
          this.setState({drinks: []})
        }
      })
  }

  getDrink(id) {
    this.fetch(`/api/drinks/${id}`)
      .then(drink => this.setState({drink: drink}))
  }

  render() {
    let {drink, drinks} = this.state;

    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React</h1>
        </header>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
      </div>
    );
  }
}

export default App;
