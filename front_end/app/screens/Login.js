import React, {Component} from 'react';
import {View, Text} from 'react-native';
import axios from 'axios';

import colors from '../config/colors';


class Login extends Component {
  render() {
    return (
      <View
        style={{ flex: 1, alignItems: 'center', justifyContent: 'center'}}>
        <Text>Login Screen</Text>
      </View>
    );
  }
}

export default Login;