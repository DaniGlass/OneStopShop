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
        <Text>category.name</Text>
      </View>
    </TouchableHighlight>
  );
};

export default CategoriesList;