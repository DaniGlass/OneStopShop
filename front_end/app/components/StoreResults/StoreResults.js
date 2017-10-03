import React, {Component} from 'react';
import { View, Text, Image } from 'react-native';
import axios from 'axios';

import colors from '../../config/colors';

class StoreResults extends Component {
  render() {
    return (
      <View style={styles.row}>
        <Image
          source={{ uri: this.props.store.image_url }}
          style={styles.image}
        />
        <View style={styles.descriptionContainer}>
          <Text style={styles.name}>{this.props.store.name}</Text>
          <Text style={styles.description}>{this.props.store.description}</Text>
        </View>
      </View>
    );
  }
}

export default StoreResults;
