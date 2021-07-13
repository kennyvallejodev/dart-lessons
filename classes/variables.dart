/**
 * Si una clase tiene el keyword `abstract`, esto significa que esta clase
 * solo puede ser usara para inherence (herencia) y no puede ser instanciada.
 */
abstract class Person {

  // Static Instance Variables es ideal acceeder a traves del `Person.AdmittedAge`
  static int AdmittedAge = 18;
  // Instance Variables es ideal acceder a traves del `this.PersonAge`
  int PersonAge = 19;
  // Instance Variables con un underscore (_) al iniciar, son variables privadas
  // las cuales solo son accesibles dentro de la clase `this._PersonRealAge`
  int _PersonRealAge = 26;
}

class Student extends Person {


  /**
   * Una vez que extendemos a una `super-class`, esta clase se vuelve una 
   * `sub-class` la cual nos permite acceder a la `super-class` a traves del keyword
   * `super`
   * 
   * - Constructor
   * `super(arguments?)`
   * `super.customConstructor(arguments)`
   * 
   * - Methods
   * `super.method()`
   */

}

void main(List<String> args) {
  


}