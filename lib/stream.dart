Stream<int> countStream(int value) async* {
  for (int i = 0; i <= value; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}

main() async {
  // print('begin');
  // đồng bộ
  // countStream(10).listen((event) {
  //   print(event.toString());
  // });
  // đồng bộ

  // bất dồng bộ
  // await for (int value in countStream(10)) {
  //   print(value.toString());
  // }
  // bất dồng bộ
  // print('end');

  // tính tổng giá trị
  // print(await sumStream(countStream(10)));
  // tính tổng giá trị

  // var dataFuture = Future.delayed(const Duration(seconds: 2), () {
  //   return 10;
  // });

  // var dataInterible = Iterable.generate(10, (value) {
  //   return value;
  // });

  // Stream<int> stream = Stream.fromIterable(dataInterible);

  // stream.listen((event) {
  //   print(event.toString());
  // });

  Stream<int> streamPeriodic = Stream.periodic(const Duration(seconds: 2), (value) {
    return value;
  });
  // this is single subcription
  // cho phép lắng nghe data 1 lần

  Stream<int> streamPeriodics = Stream.periodic(const Duration(seconds: 2), (value) {
    return value;
  }).asBroadcastStream();
  // cho nhiều lần lắng nghe

  streamPeriodic.listen((event) {
    print(event.toString());
  });
}
