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
          <Text style={styles.name}>{this.props.store[1].closest_store.name}</Text>
        </View>
      </View>
    );
  }
}

export default StoreResults;
