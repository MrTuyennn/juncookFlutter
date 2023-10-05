// ignore: file_names
import 'dart:async';

class Logic {
  StreamController countController = StreamController();
  // Logic(this.countController);
  // đẩy dữ liệu vào bộ nhớ
  Sink get sink => countController.sink;

  // lấy dữ liệu từ bộ nhớ
  Stream? get stream => countController.stream;

  addValue(String value) {
    sink.add(value);
  }
}
