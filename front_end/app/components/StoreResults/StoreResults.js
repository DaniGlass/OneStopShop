import React, {Component} from 'react';
import { View, Text, Image } from 'react-native';
import axios from 'axios';

import colors from '../../config/colors';
import styles from './styles';

class StoreResults extends Component {
  render() {
    const distance = ((this.props.store[1].closest_store.distance) * 0.000621371).toFixed(2);
    let itemsNotFound = this.props.store[1].not_found_names.join("\n");
    let itemsFoundMessage = "Items Not Found:";
    if (itemsNotFound.length === 0) {
      itemsFoundMessage = null;
      itemsNotFound = null;
    };

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
          <Text style={styles.distance}>{distance} miles away</Text>
          <View>
            <Text style={styles.secondaryText}>{itemsFoundMessage}</Text>
            <Text style={styles.smallText}>{itemsNotFound}</Text>
          </View>
        </View>
        <View style={styles.itemsResults}>
          <Text style={styles.smallText} >One Stop Price</Text>
          <Text style={styles.smallText} >for items found:</Text>
          <Text style={styles.price}>${this.props.store[1].total_price}</Text>
          <Text style={styles.smallText}>{this.props.store[1].found_items_count} out of {this.props.store[1].user_list_count} items found</Text>
        </View>
      </View>
    );
  }
}

export default StoreResults;
