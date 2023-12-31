//====================================== Volume Slider =================================
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// // This Widget is the main application widget.
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MySliderApp(),
//     );
//   }
// }
//
// class MySliderApp extends StatefulWidget {
//   MySliderApp({Key key = const Key("")}) : super(key: key);
//
//   @override
//   _MySliderAppState createState() => _MySliderAppState();
// }
//
// class _MySliderAppState extends State<MySliderApp> {
//   int _value = 6;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Slider Demo'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(15.0),
//           child: Center(
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Icon(
//                       Icons.volume_up,
//                       size: 40,
//                     ),
//                     new Expanded(
//                         child: Slider(
//                             value: _value.toDouble(),
//                             min: 1.0,
//                             max: 20.0,
//                             divisions: 10,
//                             activeColor: Colors.green,
//                             inactiveColor: Colors.orange,
//                             label: _value.toString(),
//                             onChanged: (double newValue) {
//                               setState(() {
//                                 _value = newValue.round();
//                               });
//                             },
//                             semanticFormatterCallback: (double newValue) {
//                               return '${newValue.round()} dollars';
//                             }
//                         )
//                     ),
//                   ]
//               )
//           ),
//         )
//     );
//   }
// }

//=================================== Volume Slider ==================================================
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySliderApp(),
    );
  }
}

class MySliderApp extends StatefulWidget {
  MySliderApp({Key key = const Key("")}) : super(key: key);

  @override
  _MySliderAppState createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Range Slider Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.volume_up,
                      size: 40,
                    ),
                    new Expanded(
                        child: RangeSlider(
                          values: _currentRangeValues,
                          min: 0,
                          max: 100,
                          divisions: 10,
                          labels: RangeLabels(
                            _currentRangeValues.start.round().toString(),
                            _currentRangeValues.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _currentRangeValues = values;
                            });
                          },
                        )
                    ),
                  ]
              )
          ),
        )
    );
  }
}
