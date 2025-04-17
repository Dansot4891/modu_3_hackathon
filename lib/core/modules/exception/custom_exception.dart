abstract class CustomException implements Exception {
  final int code;
  final String message;

  const CustomException(this.code, this.message);

  @override
  String toString() {
    return 'code: $code, message: $message';
  }
}

// Photo Exception
class ImageValidateError extends CustomException {
  ImageValidateError() : super(40000, '비속어를 사용할 수 없습니다.');
}

// Photo Exception
class ImageNetworkError extends CustomException {
  ImageNetworkError() : super(50000, '알 수 없는 네트워크 에러');
}
