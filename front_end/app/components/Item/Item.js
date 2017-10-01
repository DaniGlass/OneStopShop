import React from 'react';
import { View, Text, Image } from 'react-native';
import colors from '../../config/colors';
import styles from './styles';

const Item = ({ item, onPress }) => {
  console.log("Props: " + this.item);

  return (
    <View style={styles.row}>
      <Image
        source={{ uri: item.image_url }}
        style={styles.image}
      />
      <Text>{item.name}</Text>
    </View>
  );
};

export default Item;