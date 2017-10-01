import React, {Component} from 'react';
import {View, Text} from 'react-native';

class UserAccount extends Component {
  render() {
    return (
      <View
        style={{ flex: 1, alignItems: 'center', justifyContent: 'center'}}>
        <Text>UserAccount Screen</Text>
      </View>
    );
  }
}

export default UserAccount;