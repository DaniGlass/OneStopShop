import { StyleSheet } from 'react-native';

import colors from '../../config/colors';

export default StyleSheet.create({
  row: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 15,
    paddingVertical: 8,
    backgroundColor: colors.row,
    marginVertical: 2,
  },
  image: {
    width: 40,
    height: 40,
    borderRadius: 2,
    marginRight: 10,
  },
})
