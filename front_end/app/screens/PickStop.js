import React, {Component} from 'react';
import {View, Text, ScrollView} from 'react-native';
import axios from 'axios';

import colors from '../config/colors';
import { StoreResults } from '../components/StoreResults';
import { BottomNav } from '../components/BottomNav';


class PickStop extends Component {
 constructor(props) {
    super(props);
    this.state = {
      results: []
    };
    this.getStoreResults = this.getStoreResults.bind(this);
  }

  componentDidMount() {
    this.getStoreResults();
  }

  getStoreResults() {
    axios.get('http://localhost:3000/users/1/results')
      .then(response => {
        console.log(response.data)
        this.setState({results: response.data})
      })
      .catch(error => {
        console.log(error);
      });
  }

  render() {
    return (
      <ScrollView style={{ backgroundColor: colors.background}} >
        {this.state.results.map((store, idx) => (
          <StoreResults store={store} getStoreResults={this.getStoreResults} key={idx} />
        ))}
        <BottomNav />
      </ScrollView>
    );
  }
}

export default PickStop;
