class MissingParam implements Exception {
  @override
  String toString() {
    return '[MISSING PARAM]';
  }
}

class Person {

  String name = '';
  int age = 0;

  Person ({ String? name, int age = 0 }) {
    if (name == null)
      throw MissingParam();
    if (age <= 0)
      throw MissingParam();

    this.name = name;
    this.age = age;
  }

  Person.defaultValues () {
    this.name = 'Im a default person';
    this.age = 18;
  }

  @override
  toString () {
    return '\t\n[PERSON INFORMATION]\t\nName: ${this.name}\t\nAge: ${this.age}';
  }
}

void main(List<String> args) {
  
  Person Kenny = Person(age: 23, name: 'Kenny Vallejo');
  print('Kenny => $Kenny');

  Person DefaultPerson = Person.defaultValues();
  print('Default Person => $DefaultPerson');
}