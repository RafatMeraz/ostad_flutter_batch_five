void main() {
  print('task one');
  try {
    throwException();
  } on NetworkException {
    print('yahoo got it');
  } on CustomException {
    print('that is custom exception');
  } catch (e) {
    // todo
    print(e);
  } finally {
    print('Code from finally');
  }
  print('task two');
  print('task two');
  print('task two');
  print('task two');
}

void throwException() {
  // throw Exception("You are not allowed to use this function");
  throw CustomException("Our new exception");
}

class CustomException implements Exception {
  final String message;

  CustomException(this.message);

  @override
  String toString() {
    return 'CustomException : => ' + message;
  }
}

class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);

  @override
  String toString() {
    return 'NetworkExcception : => ' + message;
  }
}
