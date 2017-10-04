import React, { Component } from 'react';
import { StackNavigator } from 'react-navigation';

import Search from '../screens/Search';
import ItemList from '../screens/ItemList';
import ShoppingList from '../screens/ShoppingList';
import PickStop from '../screens/PickStop';

const StackNav = StackNavigator({
  Search: {
    screen: Search,
    navigationOptions: {
      title: 'Search',
      headerLeft: null
    },
  },
  ItemList: {
    screen: ItemList,
    navigationOptions: ({ navigation }) => ({
      title: `${navigation.state.params.name}`,
      headerLeft: null
    }),
  },
  ShoppingList: {
    screen: ShoppingList,
    navigationOptions: {
      title: 'Shopping List',
      headerLeft: null
    },
  },
  PickStop: {
    screen: PickStop,
    navigationOptions: {
      title: 'Your Possible Stops',
      headerLeft: null
    },
  },
});

export default StackNav;
