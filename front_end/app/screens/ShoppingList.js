import React, {Component} from 'react';
import {View, Text} from 'react-native';

class ShoppingList extends Component {
  render() {
    return (
      <View
        style={{ flex: 1, alignItems: 'center', justifyContent: 'center'}}>
        <Text>ShoppingList Screen</Text>
      </View>
    );
  }
}

export default ShoppingList;