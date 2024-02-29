class ResponseObject {
  final bool isSuccess;
  final int statusCode;
  final dynamic responseBody;
  final String? errorMessage;

  ResponseObject(
      {required this.isSuccess,
      required this.statusCode,
      required this.responseBody,
      this.errorMessage = ''});
}
