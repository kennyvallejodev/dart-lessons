
double totallyRandomTimeInMs() {
  return DateTime.now().second.toDouble();
}

void main(List<String> args) {
  /**
   *  Aparte de los types de las variables, existen 3 tipos aparte de los types
   * para declarar variables:
   * 
   * - var = Esta es una variable de tipo dinamico, ya que tomara el "type"
   * basado en el valor que se le asigne.
   * 
   * - const = Esta variable es una variable fija (similar al const en javascript) 
   * pero con la diferencia de que las variables `const` en dart, se utilizan para 
   * variables fijas en el momento de compilacion, esto quiere decir valores directos.
   * 
   * - final = Este tipo de variable es similar a `const` con la diferencia de que este
   * puede obtener su valor en runtime, como por ejemplo obtener su valor basado en una
   * funcion que retorne su valor.
   * 
   * Tanto a las variables de tipo `const` y `final` le puedes asignar un type 
   * explicito con la siguiente syntax:
   * `const double my...`
   * `final double my...`
   * 
   * Pero por defecto, tendra el mismo comportamiento de `var` en adoptar un type
   * basado en el contenido que se le asigne.
   * 
   * Puedes saber el tipo de valor que tiene una variable con la funcion
   * `.runtimeType`
   */

  /**
   * Recordatorio:
   * - [var] variables obtienen su type basado en su contenido (String, int, double, bool)
   */
  var myStringVal = "This is my new string value";
  print('[VAR] myStringVal is type ${myStringVal.runtimeType}');

  /**
   * Recordatorio:
   * - [const] varialbes obtienen su type basado de su contenido (al igual que var) pero tambien puedes
   * asignarle un type para que quede mas explicito su contenido, y su valor debe de ser directo ya que solo
   * se asignara en compilation time, no en execution/runtime.
   */
  const String myConstVal = 'This is my const value';
  print(
      '[CONST] myConstVal is type [${myConstVal.runtimeType}] and the value is [${myConstVal}]'
  );

  /**
   * Recordatorio:
   * - [final] variables se comportan similar a las variables de tipo `const` exceptuando el hecho de que
   * las variables `final` pueden generar su valor en runtime.
   */
  final double myFinalVal = totallyRandomTimeInMs();

  print('[FINAL] myFinalVal is type [${myFinalVal.runtimeType}] and the value is [${myFinalVal}]');
}
