import React, { Component } from 'react';
import { View, Text, ScrollView } from 'react-native';

import { categories } from '../config/data';
import colors from '../config/colors';
import { CategoriesList } from '../components/CategoriesList';

class Search extends Component {
  handleRowPress = (item) => {
    this.props.navigation.navigate('ItemList', item);
  };

  render() {
    return(
      <ScrollView style={{ backgroundColor: colors.background}} >
        {categories.map((category, idx) => (
          <CategoriesList category={category} onPress={() => this.handleRowPress(category)} key={idx} />
        ))}
      </ScrollView>
    );
  }
}
export default Search;
