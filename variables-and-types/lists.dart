void main(List<String> args) {
  /**
   * Lists en dart son el equivalente a `Array` en Javascript
   * 
   * Puedes inicializar un List similar a los Array en javascript con ==> `[]`
   */
  List<int> myEmptyNumList = [];

  /**
   * Tambien puedes inicializar con [] y insert valores dentro.
   */
  List<double> myNumListWithRecords = [1.1, 2.2, 3.3, 4];

  /**
   * Puedes definirlo tambien instanciandolo como una clase `new List()`
   * pero aparentemente esta @deprecated, por lo que consejan utilizar:
   * - [] = para inicializar un Listado. (con o sin elementos)
   * - List.filled(int length, type fillItem, { bool growable = false }) = Para generar
   * un Listado y poder definir ciertos parametros tales como:
   * - Si creo una lista, que tenga un limite de records
   * - Si creo una listas, que llene por defecto los records con X valor
   * - Si creo una lista poder activar/desactivar la posibilidad de hacer crecer la lista
   */
  List<double> myNumListInstanciated = List.filled(5, 1, growable: true);

  /**
   * [Iteraciones]
   * 
   * [1] For
   */

  print('\t\n=== [ITERATION CON FLUJO FOR] ===');
  for (int i = 0; i < myNumListInstanciated.length; i++) {
    print('[${i}] Element => ${myNumListInstanciated[i]}');
  }

  /**
   * [2] While
   * Las instancias de `List` poseen unas propiedades para que haga mas facil
   * el proceso de iterar, entre estas propiedades tenemos:
   * - `.iterator` = Este devuelve una funcion la cual te permite acceder a las siguientes
   * - `.moveNext()` = Esta es una fncion, que cuando la invocas te itera al siguiente
   * elemento de la lista, en caso de que ya no hayan mas elementos te devuelve un falsy value
   * para que puedas detener tu ciclo.
   * - `.current` = Esta propiedad trae el valor actual que posee el iterador.
   */
  Iterator<double> listIterator = myNumListInstanciated.iterator;
  print('\t\n=== [ITERATION CON FLUJO WHILE] ===');
  while (listIterator.moveNext()) {
    double currentItem = listIterator.current;
    print('Element => ${currentItem}');
  }

  /**
   * [3] ForEach
   * El ForEach en Dart funciona igual que el ForEach de los Array en Javascript,
   * con la unica diferencia que no devuelve 2 argumentos como en js (item, index). 
   * En dart solo puedes acceder al item.
   */

  print('\t\n=== [ITERATION CON List.ForEach] ===');
  myNumListInstanciated.forEach((element) {
    print('Element => ${element}');
  });

  /**
   * [4] Map
   * Al igual que en javascript, tambien existe una funcion de Map
   * para poder iterar un Array y transformarlo en lo que necesitemos
   */

  List<String> myNewStringList = myNumListInstanciated.map((e) {
    return 'Element => ${e}';
  }).toList();

  print('\t\n=== [ITERATION CON List.Map] ===');
  print('Elements => ${myNewStringList}');

  /**
   * [Filter y Find]
   * 
   * En Javascript Teniamos las funciones de `Find`
   * la cual tenia 2 variantes, findIndex y find.
   * En la que:
   * - `find`(js) equals `firstWhere`(dart) = Nos buscaba todo el contenido de un elemento basado en una 
   * condicional.
   * - `findIndex`(js) equals `no found`(dart) = Nos buscaba el index de un elemento
   * 
   * Aparte de eso, contabamos con la funcionalidad de `filter`(js) la cual
   * nos permitia eliminar los registros que no contaran con una condicional
   * 
   * - `filter`(js) equals `where`(dart)
   */
  List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8];

  /**
   * - `find`(javascript) equals to `firstWhere`(dart)
   * 
   * firstWhere sin embargo tiene una particularidad...
   * Recibe de segundo parametro un objeto, el cual puedes pasarle un
   * atributo al key `orElse`, ya que si la condicional no la cumple
   * ningun item en la lista, intentara retornar la funcionalidad de `orElse`
   * pero... si `orElse` es omitido, emitira un error de runtime.
   */
  int myFindItem = myList.firstWhere((element) => element == 6, orElse: () {
    return -1;
  });
  print('\t\n=== [FILTER FUNCTIONS CON List.singleWhere] ===');

  print('[int] myFindItem => ${myFindItem >= 0 ? 'Found' : 'Not Found'}');

  /**
   * - `filter` (js) equals to `where` (dart)
   * 
   * El unico argumento que nos pide este metodo `where` es
   * una condicional la cual tendran que cumplir los records aptos
   */

  print('\t\n=== [FILTER FUNCTIONS CON List.where] ===');

  List<int> myOddItems = myList.where((element) => element % 2 != 0).toList();
  print('[List<int>] myOddItems => ${myOddItems}');
}
