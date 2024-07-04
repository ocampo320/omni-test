class HttpResponse<T extends dynamic> {
  final int status;
  final T data;

  HttpResponse(this.data, this.status);
}
