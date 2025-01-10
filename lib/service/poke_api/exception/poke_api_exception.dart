class PokeApiException implements Exception {
  PokeApiException();
  
}

class NotFoundPokeException extends PokeApiException {
  final String id;

  NotFoundPokeException({required this.id});
  
}
