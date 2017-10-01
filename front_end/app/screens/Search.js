import React, {Component} from 'react';
import {View, Text, ScrollView} from 'react-native';

import {categories} from '../config/data';
import colors from '../config/colors';
import {CategoriesList} from '../components/CategoriesList';

class Search extends Component {

  render() {
    // const categories = this.props.navigation.state.params;

    return (
      <ScrollView
        style={{ backgroundColor: colors.background }}>
        <CategoriesList {...categories} />
      </ScrollView>
    );
  }
}

export default Search;