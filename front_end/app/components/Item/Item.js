import React, {Component} from 'react';
import { View, Text, Image, Platform, TouchableHighlight } from 'react-native';
import axios from 'axios';
import Icon from 'react-native-vector-icons/Ionicons';

import colors from '../../config/colors';
import styles, { ADD_SIZE } from './styles';

class Item extends Component {
  // constructor() {
  //   super(props);
  //   (this: any).handleAddPress = this.handleAddPress.bind(this);
  // }

  handleAddPress() {
    axios.post('http://localhost:3000/user_items', {item: this.props.item})
    .then(response => {
      console.log(response);
      this.props.getItems();
    })
    .catch(function(error) {
      console.log(error);
    });
  }

  render() {
    const iconName = 'ios-add-circle-outline';
    return (
      <TouchableHighlight
        onPress={() => this.handleAddPress()}
        underlayColor={colors.rowUnderlay}
      >
        <View style={styles.row}>
          <Image
            source={{ uri: this.props.item.image_url }}
            style={styles.image}
          />
          <View style={styles.descriptionContainer}>
            <Text style={styles.name}>{this.props.item.name}</Text>
            <Text style={styles.description}>{this.props.item.description}</Text>
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

export default Item;
