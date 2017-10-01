import React, {Component} from 'react';
import {View, Text} from 'react-native';

class ItemList extends Component {
  render() {
    return (
      <View
        style={{ flex: 1, alignItems: 'center', justifyContent: 'center'}}>
        <Text>ItemList Screen</Text>
      </View>
    );
  }
}

export default ItemList;