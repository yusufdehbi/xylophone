import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';


void main() {
  runApp(XylophoneApp());
}


// class XylophoneApp extends StatefulWidget {
//   const XylophoneApp({Key? key}) : super(key: key);
//
//   @override
//   State<XylophoneApp> createState() => _XylophoneAppState();
// }
//
// class _XylophoneAppState extends State<XylophoneApp> {
//   final player = AudioPlayer();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Center(
//             child: ElevatedButton(
//               onPressed: (){
//                 player.play(AssetSource('note1.wav'));
//               },
//               child: Text('Play'),
//
//             ),
//
//           ),
//         ),
//       ),
//     );
//   }
// }

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  TextButton soundButton(int trackNumber, Color clr){
    var btn = TextButton(
      onPressed: (){
        final player = AudioPlayer();
        player.play(AssetSource('note$trackNumber.wav'));
      },
      child: Text(''),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(clr),
      ),
    );
    return btn;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                soundButton(1, Colors.red),
                soundButton(2, Colors.orange),
                soundButton(3, Colors.yellow),
                soundButton(4, Colors.green),
                soundButton(5, Colors.teal),
                soundButton(6, Colors.blue),
                soundButton(7, Colors.purple),
                // TextButton(
                //   onPressed: (){
                //     final player = AudioPlayer();
                //     player.play(AssetSource('note3.wav'));
                //   },
                //   child: Text(''),
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                //   ),
                // ),
                // TextButton(
                //   onPressed: (){
                //     final player = AudioPlayer();
                //     player.play(AssetSource('note4.wav'));
                //   },
                //   child: Text(''),
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                //   ),
                // ),
                // TextButton(
                //   onPressed: (){
                //     final player = AudioPlayer();
                //     player.play(AssetSource('note5.wav'));
                //   },
                //   child: Text(''),
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                //   ),
                // ),
                // TextButton(
                //   onPressed: (){
                //     final player = AudioPlayer();
                //     player.play(AssetSource('note6.wav'));
                //   },
                //   child: Text(''),
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                //   ),
                // ),
                // TextButton(
                //   onPressed: (){
                //     final player = AudioPlayer();
                //     player.play(AssetSource('note7.wav'));
                //   },
                //   child: Text(''),
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Audio Player'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final player = AudioPlayer();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 player.play(AssetSource('niro.mp3'));
//               },
//               child: const Text('Play Audio'),
//             ),
//
//             ElevatedButton(onPressed: (){
//               player.stop();
//             }, child:const Text('Stop Audio')),
//
//             ElevatedButton(onPressed: (){
//               player.pause();
//             }, child:const Text('Pause ')),
//
//             ElevatedButton(onPressed: (){
//               player.resume();
//             }, child:const Text('Resume')),
//
//           ],
//         ),
//       ),
//     );
//   }
// }