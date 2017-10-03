import React, { Component } from 'react';
import { View, Text, FlatList } from 'react-native';

import { categories } from '../config/data';
import colors from '../config/colors';
import { CategoriesList } from '../components/CategoriesList';

class Search extends Component {
  handleRowPress = (item) => {
    this.props.navigation.navigate('ItemList', item);
  };

  render() {
    return(
      <FlatList
        style={{ backgroundColor: colors.background }}
        data={categories}
        renderItem={({ item }) =>
          <CategoriesList category={item} onPress={() => this.handleRowPress(item)} />
        }
        keyExtractor={(item) => item.id}
      />
    );
  }
}
export default Search;
