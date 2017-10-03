import React, {Component} from 'react';
import { View, Text, Image, Platform, TouchableHighlight } from 'react-native';
import axios from 'axios';
import Icon from 'react-native-vector-icons/Ionicons';

import colors from '../../config/colors';
import styles, { ADD_SIZE } from './styles';

class UserItem extends Component {
  // constructor() {
  //   super(props);
  //   (this: any).handleAddPress = this.handleAddPress.bind(this);
  // }

  handleDeletePress() {
    this.deleteUserItem();
  }

  deleteUserItem() {
    axios.delete('http://localhost:3000/user_items', {user_item: this.props.user_item})
    .then(response => {
      console.log(response);
      this.props.getUserItems();
    })
    .catch(function(error) {
      console.log(error);
    });
  }

  render() {
    const iconName = 'ios-remove-circle-outline';
    return (
      <TouchableHighlight
        onPress={() => this.handleDeletePress()}
        underlayColor={colors.rowUnderlay}
      >
        <View style={styles.row}>
          <Image
            source={{ uri: this.props.user_item.image_url }}
            style={styles.image}
          />
          <View style={styles.descriptionContainer}>
            <Text style={styles.name}>{this.props.user_item.name}</Text>
            <Text style={styles.description}>{this.props.user_item.description}</Text>
          </View>
          <View style={styles.addContainer}>
            <Icon
              name={iconName}
              size={ADD_SIZE}
              colors={colors.addIcon}
              style={styles.add}
            />
          </View>
        </View>
      </TouchableHighlight>
    );
  }
}

export default UserItem;
