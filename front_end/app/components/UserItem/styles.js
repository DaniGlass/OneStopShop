import { StyleSheet } from 'react-native';

import colors from '../../config/colors';

export const ADD_SIZE = 40;
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
    // width: 40,
    // height: 40,
    // borderRadius: 20,
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
  descriptionContainer: {
    flex: 1,
    flexWrap: 'wrap',
  },
  addContainer: {
    flex: 0.2,
    // backgroundColor: 'blue',
  },
  add: {
    alignSelf: 'flex-end',
  },
})
