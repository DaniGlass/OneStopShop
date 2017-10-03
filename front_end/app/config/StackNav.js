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
    },
  },
  ItemList: {
    screen: ItemList,
    navigationOptions: ({ navigation }) => ({
      title: `${navigation.state.params.name}`,
    }),
  },
  ShoppingList: {
    screen: ShoppingList,
    navigationOptions: {
      title: 'Shopping List',
    },
  },
  PickStop: {
    screen: PickStop,
    navigationOptions: {
      title: 'Your Stops',
    },
  },
});

export default StackNav;
