import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
      child: Column(
        children: <Widget>[
          const Center(
            child: Image(
              image: AssetImage('assets/weed.png'),
            ),
          ),
          const Text('Welcome to Weed Admin',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          const SizedBox(
            height: 20.0,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AuthPage()));
            },
            child: const Text(
              'Continue',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    ));
  }
}

// class NinjaCard extends StatefulWidget {
//   const NinjaCard({super.key});

//   @override
//   State<NinjaCard> createState() => _NinjaCardState();
// }

// class _NinjaCardState extends State<NinjaCard> {
//   int ninjaLevel = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: const Text('Ninja ID Card'),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0.0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const Page1(),
//               ));
//         },
//         backgroundColor: Colors.grey[800],
//         child: const Icon(Icons.add),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/player17.jpg'),
//                 radius: 40.0,
//               ),
//             ),
//             const Divider(
//               height: 90.0,
//               color: Colors.white,
//             ),
//             const Text('NAME',
//                 style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
//             const SizedBox(
//               height: 10.0,
//             ),
//             const Text('Htet Naung Htun',
//                 style: TextStyle(
//                     color: Colors.amberAccent,
//                     letterSpacing: 2.0,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold)),
//             const SizedBox(
//               height: 30.0,
//             ),
//             const Text('Current Ninja Level',
//                 style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
//             const SizedBox(
//               height: 10.0,
//             ),
//             Text('$ninjaLevel',
//                 style: const TextStyle(
//                     color: Colors.amberAccent,
//                     letterSpacing: 2.0,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold)),
//             const SizedBox(
//               height: 30.0,
//             ),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.email,
//                   color: Colors.grey[400],
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'hnh@gmail.com',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: 18.0,
//                     letterSpacing: 1.0,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
