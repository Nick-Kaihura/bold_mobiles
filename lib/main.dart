import 'package:Bold/app/ui/screens/signUp/SignUpScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bold',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SignUpScreen());
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return const Scaffold(
//       // appBar: AppBar(
//       //   // TRY THIS: Try changing the color here to a specific color (to
//       //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//       //   // change color while the other colors stay the same.
//       //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       //   // Here we take the value from the MyHomePage object that was created by
//       //   // the App.build method, and use it to set our appbar title.
//       //   title: Text(widget.title),
//       // ),
//       body: Center(),
//     );
//   }
// }
