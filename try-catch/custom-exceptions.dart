class RandomException implements Exception {

  @override
  String toString([String? e = 'Common Exception']) {
    return '[ERROR] RandomException: $e';
  }
}

void main(List<String> args) {
  

  try {
    print('Requesting...');

    throw RandomException();
  } catch (e) {
    print('Catched Error => $e');
  } finally {
    print('Job Done!');
  }
}