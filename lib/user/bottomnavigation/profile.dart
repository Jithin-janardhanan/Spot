// import 'package:flutter/material.dart';

// void main() {
//   runApp(ProfilePage());
// }

// class ProfilePage extends StatefulWidget {
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 7, 1, 1),
//         title: Center(
//           child: const Text(''),
//         ),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             height: 250,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   const Color.fromARGB(255, 10, 2, 1),
//                   const Color.fromARGB(255, 23, 6, 1)
//                 ],
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 stops: [0.5, 0.9],
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                     CircleAvatar(
//                       backgroundColor: Colors.white70,
//                       minRadius: 60.0,
//                       child: CircleAvatar(
//                         radius: 50.0,
//                         backgroundImage: NetworkImage(
//                             'https://www.istockphoto.com/photo/lotus-blooming-in-the-pond-in-summer-gm1226401835-361332582?utm_source=pixabay&utm_medium=affiliate&utm_campaign=SRP_image_sponsored&utm_content=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fflowers%2F&utm_term=flowers'),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Fahad',
//                   style: TextStyle(
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   'New page',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 25,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
