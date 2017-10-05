import React, {Component} from 'react';
import {View, Text, ScrollView} from 'react-native';
import {Container, Segment, Button} from 'native-base';
import axios from 'axios';

import colors from '../config/colors';
import { StoreResults } from '../components/StoreResults';
import PickStopByItems from './PickStopByItems';
import PickStopByDistance from './PickStopByDistance';
import PickStopByPrice from './PickStopByPrice';


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
    axios.get('http://localhost:3000/users/1/results/by_distance')
      .then(response => {
        console.log(response.data)
        this.setState({results: response.data})
      })
      .catch(error => {
        console.log(error);
      });
  }

  render() {
    const { navigate } = this.props.navigation;

    return (
      <Container>
        <Segment>
          <Button first onPress={() => navigate('PickStopByItems')}>
            <Text>By Items</Text>
          </Button>
          <Button onPress={() => navigate('PickStopByDistance')} style={{backgroundColor: colors.navTabBackground}} >
            <Text style={{color: "white", fontSize: 16, fontWeight: 'bold'}}>By Distance</Text>
          </Button>
          <Button last onPress={() => navigate('PickStopByPrice')}>
            <Text>By Price</Text>
          </Button>
        </Segment>
        <ScrollView style={{ backgroundColor: colors.background}} >
          {this.state.results.map((store, idx) => (
            <StoreResults store={store} getStoreResults={this.getStoreResults} key={idx} />
          ))}
        </ScrollView>
      </Container>
    );
  }
}

export default PickStop;
