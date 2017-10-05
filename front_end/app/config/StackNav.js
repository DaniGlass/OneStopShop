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
  PickStop: {
    screen: PickStop,
    navigationOptions: {
      title: 'Your Possible Stops',
      headerLeft: null
    },
  },
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

});

export default StackNav;
