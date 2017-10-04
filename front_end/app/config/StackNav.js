import React, { Component } from 'react';
import { StackNavigator } from 'react-navigation';

import Search from '../screens/Search';
import ItemList from '../screens/ItemList';
import ShoppingList from '../screens/ShoppingList';
import PickStop from '../screens/PickStop';
// import LoginForm from '../components';
// import RegistrationForm from '../components';
import LoginForm from '../components/LoginForm';
import RegistrationForm from '../components/RegistrationForm';

const StackNav = StackNavigator({
  LoginForm: {
    screen: LoginForm,
    navigationOptions: {
      title: 'Login',
    },
  },
  RegistrationForm: {
    screen: RegistrationForm,
    navigationOptions: {
      title: 'Register',
    },
  },
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
      title: 'Your Possible Stops',
    },
  },
});

export default StackNav;
