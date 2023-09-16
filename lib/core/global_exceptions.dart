class CustomException implements Exception {
  final String? _message;

  CustomException(this._message);

  @override
  String toString() {
    return '$_message';
  }
}

class FetchDataException extends CustomException {
  FetchDataException(String? message) : super(message);
}

class BadRequestException extends CustomException {
  BadRequestException(String? message) : super(message);
}

class UnauthorisedException extends CustomException {
  UnauthorisedException(String? message) : super(message);
}

class InvalidInputException extends CustomException {
  InvalidInputException(String? message) : super(message);
}

class DataNotFoundException extends CustomException {
  DataNotFoundException(String? message) : super(message);
}

class NoInternetConnectionException extends CustomException {
  NoInternetConnectionException(String? message) : super(message);
}
