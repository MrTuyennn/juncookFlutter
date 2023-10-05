// // logic stream controller

// import 'dart:async';

// class Logic {
//   StreamController controller;

//   // get đẩy dữ liệu vào
//   Sink get sink => controller.sink;
//   // get đẩy dữ liệu vào

//   // set đẩy dữ liệu raF
//   Stream get stream => controller.stream;
//   // set đẩy dữ liệu raF

//   Logic(this.controller);

//   assValue(String value) {
//     sink.add(value);
//   }

//   printValue() {
//     stream.listen((event) {
//       print(event.toString());
//     });
//   }
// }

// class LogicMaintain {
//   Logic logic;
//   LogicMaintain(this.logic);

//   assValue(String value) {
//     logic.sink.add(value);
//   }

//   printValue() {
//     logic.stream.listen((event) {
//       print(event.toString());
//     });
//   }
// }

// main() {
//   StreamController controller = StreamController();
//   StreamController controller2 = StreamController();
//   Logic logic = Logic(controller);
//   // controller2.addStream(logic.stream);
//   // logic.assValue('value');
//   // logic.printValue();

//   // controller2.stream.listen((event) {
//   //   print(event.toString());
//   // });

//   LogicMaintain logicMaintain = LogicMaintain(logic);
//   logicMaintain.assValue('value');
//   logicMaintain.printValue();

//   controller.close();
// }
