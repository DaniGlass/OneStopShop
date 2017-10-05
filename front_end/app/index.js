import React from 'react';
import TabNav from './config/TabNav';

const App = () => {
  return <TabNav/>;
};

// export default App;


// FROM DANI'S BRANCH

// import React from 'react';

// import {StackNavigator} from 'react-navigation';
// import Search from './screens/Search';
// import ItemList from './screens/ItemList';
// import ShoppingList from './screens/ShoppingList';
// import PickStop from './screens/PickStop';
// import LoginForm from './components/LoginForm';
// import RegistrationForm from './components/RegistrationForm';

// // import Icon from 'react-native-vector-icons/FontAwesome';

// // const ICON_SIZE = 25;
// // const logo = require('../images/OneStopShopLogo.png');

// // const Left = ({ onPress }) => (
// //   <TouchableHighlight onPress={onPress}>
// //       <Icon
// //         size={ICON_SIZE}
// //         color={colors.icon}
// //         name="search"
// //       />
// //   </TouchableHighlight>
// // );

// // const handleSearchPress = ({ onPress }) => {
// //   this.props.navigation.navigate('Search');
// // };

// const App = StackNavigator({
//   Login: { screen: LoginForm },
//   Register: { screen: RegistrationForm },
//   Search: {
//     screen: Search,
//     navigationOptions: {
//       title: 'Search',
//       headerLeft: null,
//     },
//   },
//   ItemList: {
//     screen: ItemList,
//     navigationOptions: ({ navigation }) => ({
//       title: `${navigation.state.params.name}`,
//       headerLeft: null,
//     }),
//   },
//   ShoppingList: {
//     screen: ShoppingList,
//     navigationOptions: {
//       title: 'Shopping List',
//       headerLeft: null
//     },
//   },
//   PickStop: {
//     screen: PickStop,
//     navigationOptions: {
//       title: 'Your Possible Stops',
//       headerLeft: null
//     },
//   },
// });

export default App;
