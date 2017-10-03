import React from 'react';
import { View, Text, TouchableHighlight, Image } from 'react-native';
import colors from '../../config/colors';
import styles from './styles';

const CategoriesList = ({category, onPress}) => {
  return (
    <TouchableHighlight
      onPress={onPress}
      underlayColor={colors.rowUnderlay}
    >
      <View style={styles.row}>
        <Image
          source={{ uri: category.image_url }}
          style={styles.image}
        />
        <View>
          <Text>{category.name}</Text>
        </View>
      </View>
    </TouchableHighlight>
  );
};

export default CategoriesList;