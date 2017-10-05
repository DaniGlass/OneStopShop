import React, { Component } from 'react';
import { View, Text, TouchableOpacity } from 'react-native';
import Icon from 'react-native-vector-icons/FontAwesome';
import colors from '../../config/colors';
import styles from './styles';

const ICON_SIZE = 25;

class BottomNav extends Component {
  handleSearchPress() {
    this.props.navigation.navigate('Search');
  }

  render() {
    return (
     <View style={styles.footerStyle}>
        <TouchableOpacity onPress={() => this.handleSearchPress}>
          <View style={styles.footerSubGroup}>
            <Icon
              size={ICON_SIZE}
              color={colors.icon}
              name="search"
            />
            <Text style={styles.footerTextStyle}>Categories</Text>
          </View>
        </TouchableOpacity>
      </View>
    );
  }
}

export default BottomNav;
