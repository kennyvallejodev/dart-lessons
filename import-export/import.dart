import './functions.dart' as Functions;

/**
 * Make the import with this way will make available every 
 * function, type and class declared on the current scope
 */
// import './functions.dart';

/**
 *  Using import with the show keyword will only fetch the
 *  declared ones. `just like import {} from '..'` from
 * js
 */
// import './functions.dart' show fetchRandomString;

/**
 * Using import like this will fetch everything except the
 * selected functions
 */
// import './functions.dart' hide fetchRandomString;

void main(List<String> args) {
  

  print('Random Word -> ${Functions.fetchRandomString()}');
}