import React from 'react';
import {StackNavigator} from 'react-navigation';

import Search from './screens/Search';
import ItemList from './screens/ItemList';
import Login from './screens/Login'

const App = StackNavigator({
  Login: {
    screen: Login,
    navigationOptions: {
      title: 'Login',
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


});

export default App;