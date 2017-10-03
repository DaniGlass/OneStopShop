import { StyleSheet } from 'react-native';

import colors from '../../config/colors';

export default StyleSheet.create({
  row: {
    flexDirection: 'row',
    paddingHorizontal: 15,
    paddingVertical: 8,
    backgroundColor: colors.row,
    marginVertical: 2,
  },
  image: {
    width: 60,
    height: 60,
    borderRadius: 30,
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
  smallText: {
    fontSize: 10,
    color: colors.subtleText,
  },
  price: {
    fontSize: 16,
    fontWeight: '500',
    color: colors.primaryText,
  },
  descriptionContainer: {
    flex: 1,
    flexWrap: 'wrap',
  },
  itemsResults: {
    alignSelf: 'flex-end',
    alignItems: 'center',
  }
})
