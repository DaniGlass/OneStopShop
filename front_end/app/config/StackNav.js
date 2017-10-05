import React, { Component } from 'react';
import { StackNavigator } from 'react-navigation';

import Search from '../screens/Search';
import ItemList from '../screens/ItemList';
import ShoppingList from '../screens/ShoppingList';
import PickStop from '../screens/PickStop';
import PickStopByItems from '../screens/PickStopByItems';
import PickStopByDistance from '../screens/PickStopByDistance';
import PickStopByPrice from '../screens/PickStopByPrice';
import LoginForm from '../components/LoginForm';
import RegistrationForm from '../components/RegistrationForm';

const StackNav = StackNavigator({
  LoginForm: {
    screen: LoginForm,
    navigationOptions: {
      title: 'Login',
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    },
  },
  RegistrationForm: {
    screen: RegistrationForm,
    navigationOptions: {
      title: 'Register',
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    },
  },
  PickStop: {
    screen: PickStop,
    navigationOptions: {
      title: 'Pick-A-Stop',
      headerLeft: null,
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    },
  },
  Search: {
    screen: Search,
    navigationOptions: {
      title: 'Search',
      headerLeft: null,
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    },
  },
  ItemList: {
    screen: ItemList,
    navigationOptions: ({ navigation }) => ({
      title: `${navigation.state.params.name}`,
      headerLeft: null,
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    }),
  },
  ShoppingList: {
    screen: ShoppingList,
    navigationOptions: {
      title: 'Shopping List',
      headerLeft: null,
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    },
  },
  PickStopByItems: {
    screen: PickStopByItems,
    navigationOptions: {
      title: 'Pick-A-Stop',
      headerLeft: null,
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    },
  },
  PickStopByDistance: {
    screen: PickStopByDistance,
    navigationOptions: {
      title: 'Pick-A-Stop',
      headerLeft: null,
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    },
  },
  PickStopByPrice: {
    screen: PickStopByPrice,
    navigationOptions: {
      title: 'Pick-A-Stop',
      headerLeft: null,
      headerStyle: {backgroundColor: "#239B56"},
      headerTintColor: "white"
    },
  },
});

export default StackNav;
