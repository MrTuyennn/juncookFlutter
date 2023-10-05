import 'dart:async';

main() async {
  Stream streamIn = Stream.fromIterable(['1', '2', '3']);

  StreamTransformer stringToIntTranfor = StreamTransformer.fromHandlers(
    handleData: ((data, sink) => {
          if (data % 2 != 0)
            {sink.addError('lẻ')}
          else
            {sink.add(int.parse(data))}
        }),
  );

  Stream checkOut = streamIn.where((event) => event % 2);

  Stream streamOut = streamIn.transform(stringToIntTranfor);

  streamOut.listen((event) {
    print(event.toString());
  });
}
