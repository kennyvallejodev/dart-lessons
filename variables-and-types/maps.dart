
void main(List<String> args) {
  /**
   * `Maps`(dart) son similares a los `Object`(js) por el hecho de que 
   * es una collecion de `key`:`value`.
   */

  Map<String, dynamic> mapPersonInfo = {
    'firstName': 'Kenny',
    'lastName': 'Vallejo',
    'socialMedia': [
      {
        'name': 'Twitter',
        'username': '@Kenny_Vallejo97',
        'url': 'https://twitter.com/Kenny_Vallejo97'   
      },
      {
        'name': 'Instagram',
        'username': 'keenyy1997',
        'url': 'https://www.instagram.com/keenyy1997'   
      }
    ]
  };

  print('[Map<String, dynamic>] mapPersonInfo => 👇👇👇');
  print(mapPersonInfo);

  print('[Map<String,dynamic>] mapPersonInfo (entries) 👇👇👇👇');
  print(mapPersonInfo.keys);

  mapPersonInfo.keys.forEach((key) {
    print('Current Key => ${key}');
    print('Value => ${mapPersonInfo[key]}');
  });

  mapPersonInfo = {
    ...mapPersonInfo,
    'newField': 'Hey youu',
  };

  print('Using spread operator to add a new field');
  print(mapPersonInfo);
}