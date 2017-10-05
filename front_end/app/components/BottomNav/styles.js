import { StyleSheet } from 'react-native';

import colors from '../../config/colors';

export default StyleSheet.create({
  footerStyle: {
    height: 60,
    position: 'relative',
    bottom: 0,
    left: 0,
    right: 0,
    backgroundColor: colors.buttonBackground,
    flexDirection: 'row',
    justifyContent: 'space-around',
    alignItems: 'center'
  },
  footerTextStyle: {
    color: 'white',
    fontSize: 13
  },
  footerSubGroup: {
    alignItems: 'center',
    justifyContent: 'center'
  }
})
