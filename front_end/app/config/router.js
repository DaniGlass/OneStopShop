import {StackNavigator} from 'react-navigation';

import Search from '../screens/Search';

export const CategoriesStack = StackNavigator({
  Search: {
    screen: Search,
    navigationOptions: {
      title: 'Search',
    },
  },
});