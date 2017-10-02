import { StyleSheet } from 'react-native';

import colors from '../../config/colors';

export default StyleSheet.create({
  row: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 15,
    paddingVertical: 8,
    backgroundColor: colors.row,
    marginVertical: 1,
  },
  image: {
    width: 40,
    height: 40,
    borderRadius: 20,
    marginRight: 10,
  },
  name: {
    fontSize: 16,
    fontWeight: '500',
    color: colors.primaryText,
  },
  description: {
    fontSize: 13,
    color: colors.subtleText,
  },
  descriptionContainer: {
    flex: 0.9,
    flexWrap: 'wrap',
  },
})
