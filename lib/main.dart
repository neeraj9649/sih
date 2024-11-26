// import 'package:dash_board/Util/Png_Names/Png_Names.dart';
// import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     int currentIndex = 0;
//     final List<String> _svgIcons = [
//       bMISVG,
//       bMISVG,
//       heartSVG,
//       heartSVG,
//       heartSVG,
//     ];
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             SvgPicture.asset(
//               bMISVG,
//               // _svgIcons[1],

//               colorFilter: ColorFilter.mode(true ? Colors.green : Colors.pink,
//                   BlendMode.srcIn), // Change color
//               width: 90, // Adjust the size of the SVG
//               height: 104,
//             ),
//             Center(
//               child: Container(
//                 width: 300, // Set desired width
//                 height: 200, // Set desired height
//                 decoration: BoxDecoration(
//                   color: Colors.blueAccent, // Background color
//                   borderRadius: BorderRadius.circular(16), // Rounded corners
//                 ),
//                 child: Stack(
//                   children: [
//                     // Text in the center of the container
//                     Padding(
//                       padding: const EdgeInsets.all(
//                           16.0), // Add padding for the text
//                       child: Align(
//                         alignment: Alignment.topLeft,
//                         child: Container(
//                           width: 200,
//                           child: Text(
//                             "Love yourself and those around you – break the habit.",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),

//                     // SVG image at the bottom right
//                     Align(
//                       alignment: Alignment.bottomRight,
//                       // child: Text('image'),
//                       child: Image.asset(familypng),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: (index) {
//           print(index);
//           print(currentIndex = index);
//           setState(() {
//             currentIndex = index;
//             print("index ");
//             print(index);
//             print("current ${currentIndex}");
//             // Update the selected index
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               _svgIcons[0],
//               colorFilter: ColorFilter.mode(
//                   currentIndex == 0 ? Colors.green : Colors.pink,
//                   BlendMode.srcIn), // Change color
//               width: 24, // Adjust the size of the SVG
//               height: 24,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         selectedItemColor: Colors.green, // Color for selected item
//         unselectedItemColor: Colors.grey, // Color for unselected items
//         backgroundColor: Colors.blueAccent, // Background color of the navbar
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//       // bottomNavigationBar: BottomNavigationBar(
//       //   currentIndex: _selectedIndex,
//       //   onTap: (int index) {
//       //     setState(() {
//       //       _selectedIndex = index;
//       //     });
//       //   },
//       //   items: List.generate(_svgIcons.length, (index) {
//       //     bool isSelected = _selectedIndex == index;
//       //     return BottomNavigationBarItem(
//       //       backgroundColor: Colors.blue,
//       //       icon: SvgPicture.asset(
//       //         _svgIcons[index],
//       //         colorFilter: ColorFilter.mode(
//       //             isSelected ? Colors.green : Colors.pink,
//       //             BlendMode.srcIn), // Change color
//       //         width: 24, // Adjust the size of the SVG
//       //         height: 24,
//       //       ),
//       //       label: 'yes',
//       //     );
//       //   }),
//       // ),
//     );
//   }
// }
// =============;
import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 2560),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: appbarColor, foregroundColor: Colors.white),
          colorScheme: ColorScheme.fromSeed(seedColor: appbarColor),
          useMaterial3: true,
        ),
        home: NavBarScreen(),
      ),
    );
  }
}
