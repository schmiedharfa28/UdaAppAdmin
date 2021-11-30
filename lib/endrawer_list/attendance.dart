import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// List<Map<dynamic, String>> dataList = [
//   {
//     "gambar": "satu.png",
//     "nama": "Irfan Kurniawan",
//     "subtitle": "UI UX Designer",
//     "time": "00.00.00",
//     "button": "Check in Now"
//   },
//   {
//     "gambar": "dua.png",
//     "nama": "Raeihan Alvaro",
//     "subtitle": "Graphic Designer",
//     "time": "07.10.01",
//     "button": "Check in Now"
//   },
//   {
//     "gambar": "tiga.png",
//     "nama": "Robert Downy Jr",
//     "subtitle": "UI Designer",
//     "time": "00.00.00",
//     "button": "Check in Now"
//   },
//   {
//     "gambar": "empat.png",
//     "nama": "Ahmad Fauzan",
//     "subtitle": "UX Designer",
//     "time": "14.14.14",
//     "button": "Check in Now"
//   },
// ];

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  // bool _flag = true;
  // List<int> selectedIndexList = [];
  // var selected;
  // var selectedbaru;
  // List<bool> _list = [true, false, true, false];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 320) / 1;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: Color(0xffF7F7F9),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff10B479),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Attendance",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today: Friday",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Text(
                    "Time: 09.00 WIB",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              Text(
                "Date: 09/09/2021",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                  height: 41,
                  width: 81,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                          image: AssetImage(
                            'assets/icons/filter.png',
                          ),
                          height: 15,
                          width: 18),
                    ],
                  ),
                ),
                onTap: () {
                  _tripEditSatuModalBottomSheet(context);
                },
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: new GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: (itemWidth / itemHeight),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 13),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icons/satu.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Irfan Kurniawan",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "UI UX Designer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "00.00.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: SizedBox(
                                height: 32,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    color: Color(0xff27AE60),
                                    height: 32,
                                    minWidth: double.infinity,
                                    onPressed: () {},
                                    child: Center(
                                      child: Text("Check in Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10)),
                                    ),
                                    // child: ElevatedButton(
                                    //   onPressed: () => setState(() => _flag = !_flag),
                                    //   child: Center(
                                    //     child: Text(
                                    //       _flag ? 'Check in Now' : 'Check out Now',
                                    //       style: TextStyle(fontSize: 12),
                                    //     ),
                                    //   ),
                                    //   style: ElevatedButton.styleFrom(
                                    //     fixedSize: const Size(115, 32),
                                    //     primary: _flag
                                    //         ? Color(0xff27AE60)
                                    //         : Colors.red, // This is what you need!
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 13),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icons/dua.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Raeihan Alvaro",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Graphic Designer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "07.10.01",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: SizedBox(
                                height: 32,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    color: Color(0xffEB5757),
                                    height: 32,
                                    minWidth: double.infinity,
                                    onPressed: () {},
                                    child: Center(
                                      child: Text("Check out Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 13),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icons/tiga.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Robert Downy Jr",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "UI Designer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "00.00.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: SizedBox(
                                height: 32,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    color: Color(0xff27AE60),
                                    height: 32,
                                    minWidth: double.infinity,
                                    onPressed: () {},
                                    child: Center(
                                      child: Text("Check In Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 13),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/icons/empat.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Ahmad Fauzan",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "UX Designer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "14.14.14",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: SizedBox(
                                height: 32,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    color: Color(0xffEB5757),
                                    height: 32,
                                    minWidth: double.infinity,
                                    onPressed: () {},
                                    child: Center(
                                      child: Text("Check Out Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: 600,
              //   color: Color(0xffF7F7F9),
              //   width: double.infinity,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: StaggeredGridView.countBuilder(
              //       physics: ClampingScrollPhysics(),
              //       crossAxisCount: 4,
              //       itemCount: 4,
              //       itemBuilder: (BuildContext context, int index) =>
              //           buildImageCard(index),
              //       staggeredTileBuilder: (int index) =>
              //           new StaggeredTile.count(2, index.isEven ? 3 : 3),
              //       mainAxisSpacing: 3.0,
              //       crossAxisSpacing: 4.0,
              //     ),
              //   ),
              // )

              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildImageCard(int index) => Card(
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  //       child: Padding(
  //         padding: const EdgeInsets.only(top: 9, left: 10, right: 10),
  //         child: Column(
  //           children: [
  //             Image(
  //               image: AssetImage('assets/icons/${dataList[index]['gambar']}'),
  //               height: 100,
  //               width: 135,
  //             ),
  //             SizedBox(
  //               height: 5,
  //             ),
  //             Text(
  //               "${dataList[index]['nama']}",
  //               style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
  //             ),
  //             Text(
  //               "${dataList[index]['subtitle']}",
  //               style: TextStyle(fontSize: 10, color: Color(0xff27AE60)),
  //             ),
  //             SizedBox(
  //               height: 5,
  //             ),
  //             Text(
  //               "${dataList[index]['time']}",
  //               style: TextStyle(
  //                   fontSize: 9,
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //             SizedBox(
  //               height: 5,
  //             ),
  //             Center(
  //               child: SizedBox(
  //                 height: 27,
  //                 child: ElevatedButton(
  //                   onPressed: () => setState(() => _flag = !_flag),
  //                   child: Center(
  //                     child: Text(
  //                       _flag ? 'Check in Now' : 'Check out Now',
  //                       style: TextStyle(fontSize: 8),
  //                     ),
  //                   ),
  //                   style: ElevatedButton.styleFrom(
  //                     padding: const EdgeInsets.symmetric(
  //                         horizontal: 10, vertical: 10),
  //                     fixedSize: const Size(115, 32),
  //                     primary: _flag
  //                         ? Color(0xff27AE60)
  //                         : Colors.red, // This is what you need!
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );

  void _tripEditSatuModalBottomSheet(context) {
    showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0.0)),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.85,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(25.0),
              topRight: const Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sort By :",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Image(
                        image: AssetImage('assets/icons/close.png'),
                        height: 25,
                        width: 25,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Status",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      height: 41,
                      width: 85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xffE5E5E5), width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Check In",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff333333)),
                          )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 41,
                      width: 92,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xffE5E5E5), width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "CheckOut",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff333333)),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Department",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 196,
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE5E5E5), width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "Mobile Developer (Kotlin)",
                    style: TextStyle(fontSize: 14),
                  )),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 201,
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE5E5E5), width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "Mobile Developer (Flutter)",
                    style: TextStyle(fontSize: 14),
                  )),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 190,
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE5E5E5), width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "Mobile Developer (Swift)",
                    style: TextStyle(fontSize: 14),
                  )),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Container(
                      width: 160,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xffE5E5E5), width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Front End Developer",
                        style: TextStyle(fontSize: 14),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 158,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xffE5E5E5), width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Back End Developer",
                        style: TextStyle(fontSize: 14),
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Container(
                      width: 99,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xffE5E5E5), width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "UI Designer",
                        style: TextStyle(fontSize: 14),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 99,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xffE5E5E5), width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "UX Designer",
                        style: TextStyle(fontSize: 14),
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: 142,
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE5E5E5), width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "Graphic Designer",
                    style: TextStyle(fontSize: 14),
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                    height: 41,
                    minWidth: double.infinity,
                    color: Color(0xff27AE60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "OK",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        );
      },
    );
  }
}
