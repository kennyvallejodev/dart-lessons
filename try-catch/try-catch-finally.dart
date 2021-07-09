void main(List<String> args) {
 
  try {
    print('[REQUEST] Job Starting...');
    throw Exception('Someone triggers an exception...');

    print('[DONE] Successful Job!');
  } catch (e) {
    print('[ERROR] Error Catched: $e');
  } finally {
    print('[FINALLY TRIGGER] Job Done!');    
  }
}