// import 'package:flutter/material.dart';

// class Coba extends StatefulWidget {
//   const Coba({Key? key}) : super(key: key);

//   @override
//   _CobaState createState() => _CobaState();
// }

// class _CobaState extends State<Coba> {
//   // late final String title;
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     /*24 is for notification bar on Android*/
//     final double itemHeight = (size.height - kToolbarHeight - 259) / 1;
//     final double itemWidth = size.width / 2;
//     return new Scaffold(
//       backgroundColor: Colors.black,
//       appBar: new AppBar(
//           // title: new Text(widget.title),
//           ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 170, left: 8, right: 8),
//         child: new Container(
//           child: new GridView.count(
//             crossAxisCount: 2,
//             mainAxisSpacing: 8.0,
//             crossAxisSpacing: 8.0,
//             childAspectRatio: (itemWidth / itemHeight),
//             controller: new ScrollController(keepScrollOffset: false),
//             shrinkWrap: true,
//             scrollDirection: Axis.vertical,
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(5)),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10, top: 13),
//                   child: Column(
//                     children: [
//                       Image(
//                         image: AssetImage('assets/icons/satu.png'),
//                         height: 100,
//                         width: 135,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "Irfan Kurniawan",
//                         style: TextStyle(
//                             fontSize: 14, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         "UI UX Designer",
//                         style:
//                             TextStyle(fontSize: 11, color: Color(0xff27AE60)),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text(
//                         "00.00.00",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Center(
//                         child: SizedBox(
//                           height: 32,
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 20, right: 20),
//                             child: MaterialButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(5)),
//                               color: Color(0xff27AE60),
//                               height: 32,
//                               minWidth: double.infinity,
//                               onPressed: () {},
//                               child: Center(
//                                 child: Text("Check in Now",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 12)),
//                               ),
//                               // child: ElevatedButton(
//                               //   onPressed: () => setState(() => _flag = !_flag),
//                               //   child: Center(
//                               //     child: Text(
//                               //       _flag ? 'Check in Now' : 'Check out Now',
//                               //       style: TextStyle(fontSize: 12),
//                               //     ),
//                               //   ),
//                               //   style: ElevatedButton.styleFrom(
//                               //     fixedSize: const Size(115, 32),
//                               //     primary: _flag
//                               //         ? Color(0xff27AE60)
//                               //         : Colors.red, // This is what you need!
//                               //   ),
//                               // ),
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(5)),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10, top: 13),
//                   child: Column(
//                     children: [
//                       Image(
//                         image: AssetImage('assets/icons/dua.png'),
//                         height: 100,
//                         width: 135,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "Raeihan Alvaro",
//                         style: TextStyle(
//                             fontSize: 14, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         "Graphic Designer",
//                         style:
//                             TextStyle(fontSize: 11, color: Color(0xff27AE60)),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text(
//                         "07.10.01",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Center(
//                         child: SizedBox(
//                           height: 32,
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 20, right: 20),
//                             child: MaterialButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(5)),
//                               color: Color(0xffEB5757),
//                               height: 32,
//                               minWidth: double.infinity,
//                               onPressed: () {},
//                               child: Center(
//                                 child: Text("Check out Now",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 12)),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(5)),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10, top: 13),
//                   child: Column(
//                     children: [
//                       Image(
//                         image: AssetImage('assets/icons/tiga.png'),
//                         height: 100,
//                         width: 135,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "Robert Downy Jr",
//                         style: TextStyle(
//                             fontSize: 14, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         "UI Designer",
//                         style:
//                             TextStyle(fontSize: 11, color: Color(0xff27AE60)),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text(
//                         "00.00.00",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Center(
//                         child: SizedBox(
//                           height: 32,
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 20, right: 20),
//                             child: MaterialButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(5)),
//                               color: Color(0xff27AE60),
//                               height: 32,
//                               minWidth: double.infinity,
//                               onPressed: () {},
//                               child: Center(
//                                 child: Text("Check In Now",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 12)),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(5)),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10, top: 13),
//                   child: Column(
//                     children: [
//                       Image(
//                         image: AssetImage('assets/icons/empat.png'),
//                         height: 100,
//                         width: 135,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "Ahmad Fauzan",
//                         style: TextStyle(
//                             fontSize: 14, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         "UX Designer",
//                         style:
//                             TextStyle(fontSize: 11, color: Color(0xff27AE60)),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text(
//                         "14.14.14",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Center(
//                         child: SizedBox(
//                           height: 32,
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 20, right: 20),
//                             child: MaterialButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(5)),
//                               color: Color(0xffEB5757),
//                               height: 32,
//                               minWidth: double.infinity,
//                               onPressed: () {},
//                               child: Center(
//                                 child: Text("Check Out Now",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 12)),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
