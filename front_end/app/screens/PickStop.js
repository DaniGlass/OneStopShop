import React, {Component} from 'react';
import {View, Text, ScrollView} from 'react-native';
import axios from 'axios';

import colors from '../config/colors';
import { StoreResults } from '../components/StoreResults';


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
      <View style={{ backgroundColor: colors.background}} >
        <ScrollView>
          {this.state.results.map((store, idx) => (
            <StoreResults store={store} getStoreResults={this.getStoreResults} key={idx} />
          ))}
        </ScrollView>
      </View>
    );
  }
}

export default PickStop;
