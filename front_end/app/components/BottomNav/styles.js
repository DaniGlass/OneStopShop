import { StyleSheet } from 'react-native';

import colors from '../../config/colors';

export default StyleSheet.create({
  footerStyle: {
    height: 60,
    position: 'relative',
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
