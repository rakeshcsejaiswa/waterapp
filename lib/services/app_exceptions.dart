class AppExceptions implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  AppExceptions([this.message, this.prefix, this.url]);

  String toString() {
    return "$prefix$message";
  }
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, 'Bad Request');
}

class FetchDataException extends AppExceptions {
  FetchDataException([message]) : super(message, 'Unable to process');
}

class ApiNotRespondingException extends AppExceptions {
  ApiNotRespondingException([message]) : super(message, 'Api Not Responding');
}

class UnAuthorizedException extends AppExceptions {
  UnAuthorizedException([message]) : super(message, 'UnAuthorized Request');
}
