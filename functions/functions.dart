void main(List<String> args) {
  

  String returnNameWithGrants ({ String name = 'No name', bool isMen = false }) {

    return 'Hello ${isMen == true ? 'mr' : 'mrs'}, ${name}';
  }

  print(
    returnNameWithGrants(name: 'Kenny', isMen: true)
  );
}