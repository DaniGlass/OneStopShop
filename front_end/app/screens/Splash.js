import React, {Component} from 'react';
import {View, Text} from 'react-native';

class Splash extends Component {
  render() {
    return (
      <View
        style={{ flex: 1, alignItems: 'center', justifyContent: 'center'}}>
        <Text>Splash Screen</Text>
      </View>
    );
  }
}

export default Splash;