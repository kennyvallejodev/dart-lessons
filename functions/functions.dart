void main(List<String> args) {
  
  // TODO: Comentarios a las funciones
  // 1. Argumentos Obligatorios
  // 2. Argumentos Opcionales
  // 3. Argumentos como Objetos (Consumo y Uso)
  String returnNameWithGrants ({ String name = 'No name', bool isMen = false }) {

    return 'Hello ${isMen == true ? 'mr' : 'mrs'}, ${name}';
  }

  print(
    returnNameWithGrants(name: 'Kenny', isMen: true)
  );
}