import React, {Component} from 'react';
import { View, Text, ScrollView, Button } from 'react-native';
import axios from 'axios';

import colors from '../config/colors';
import { UserItem } from '../components/UserItem';
// import { FindStopButton } from '../components/FindStopButton';

class ShoppingList extends Component {

  constructor(props) {
    super(props);
    this.state = {
      user_items: []
    };
    this.getUserItems = this.getUserItems.bind(this);
    this.handleButtonPress = this.handleButtonPress.bind(this);
  }

  componentDidMount() {
    this.getUserItems();
  }

  getUserItems() {
    // const category = this.props.navigation.state.params;
    axios.get('http://localhost:3000/user_items')
      .then(response => {
        // console.log(response.data);
        this.setState({user_items: response.data})
      })
      .catch(error => {
        console.log(error);
      });
  }

  handleButtonPress() {
    this.props.navigation.navigate('PickStop');
  };

  render() {
    return (
      <View style={{ backgroundColor: colors.background }}>
        <ScrollView style={{ backgroundColor: colors.background}}>
          {this.state.user_items.map((user_item, idx) => (
            <UserItem user_item={user_item} getUserItems={this.getUserItems} key={idx} />
          ))}
        </ScrollView>
        <Button
          onPress={() => this.handleButtonPress()}
          title="Find Yo' Stop!"
          color={colors.buttonText}
          backgroundColor={colors.buttonBackground}
          accessibilityLabel="Find Your Stop for One Stop Shopping"
        />
      </View>
    );
  }
}

export default ShoppingList;
