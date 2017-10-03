import React, {Component} from 'react';
import { View, Text, Image } from 'react-native';
import axios from 'axios';

import colors from '../../config/colors';
import styles from './styles';

class StoreResults extends Component {
  render() {
    return (
      <View style={styles.row}>
        <Image
          source={{ uri: this.props.store[1].closest_store.image_url }}
          style={styles.image}
        />
        <View style={styles.descriptionContainer}>
          <Text style={styles.name}>{this.props.store[1].closest_store.name}</Text>
          <Text style={styles.description}>{this.props.store[1].closest_store.location.display_address[0]}</Text>
          <Text style={styles.description}>{this.props.store[1].closest_store.location.display_address[1]}</Text>
        </View>
        <View style={styles.itemsResults}>
          <Text style={styles.description} >One Stop Price</Text>
          <Text style={styles.description} >for items found:</Text>
          <Text style={styles.price}>${this.props.store[1].total_price}</Text>
        </View>
      </View>
    );
  }
}

export default StoreResults;
