import React, {Component} from 'react';
import {View, Text, FlatList} from 'react-native';
import colors from '../config/colors'
// import { ItemList } from '..'

class ItemList extends Component {

  render() {
    return (
      <FlatList
        style={{ backgroundColor: colors.background}}
        // data={category_items}
        // renderItem={({item}) =>
        //   <View><Text>{item.image_url}{item.name}{item.brand}}</Text></View>}
        // keyExtractor={(item) => item.id}
      />
    );
  }
}

export default ItemList;