import React, {Component} from 'react';
import { View, Text, ScrollView } from 'react-native';
import { Button } from 'native-base';
import axios from 'axios';

import colors from '../config/colors';
import { UserItem } from '../components/UserItem';


class ShoppingList extends Component {

  constructor(props) {
    super(props);
    this.state = {
      userItems: []
    };
    this.getUserItems = this.getUserItems.bind(this);
    this.handleButtonPress = this.handleButtonPress.bind(this);
  }

  componentDidMount() {
    this.getUserItems();
  }

  getUserItems() {
    axios.get('http://localhost:3000/user_items')
      .then(response => {
        this.setState({userItems: response.data})
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
          {this.state.userItems.map((userItem, idx) => (
            <UserItem user_item={userItem} getUserItems={this.getUserItems} key={idx} />
          ))}
        </ScrollView>
        <Button full onPress={() => this.handleButtonPress()}>
          <Text>Find Yo' Stop!</Text>
        </Button>
      </View>
    );
  }
}

export default ShoppingList;
