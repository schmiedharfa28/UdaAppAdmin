import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:udaapp_admin/animations/animations.dart';
import 'package:udaapp_admin/endrawer_list/attendance.dart';

List<Map<dynamic, String>> dataa = [
  {
    "gambar": "abcone.png",
    "nama": "Reihan Alvaro",
    "subtitle": "UDC - 07102001 | Staff"
  },
  {
    "gambar": "abctwo.png",
    "nama": "Jenny Wilson",
    "subtitle": "UDC - 07102001 | Staff"
  },
  {
    "gambar": "abcthree.png",
    "nama": "Albert Flores",
    "subtitle": "UDC - 07102001 | Staff"
  },
  {
    "gambar": "abctwo.png",
    "nama": "Cody Fisher",
    "subtitle": "UDC - 07102001 | Staff"
  },
  {
    "gambar": "abcfive.png",
    "nama": "Ralph Edwards",
    "subtitle": "UDC - 07102001 | Staff"
  },
  {
    "gambar": "abcsix.png",
    "nama": "Kathryn Murphy",
    "subtitle": "UDC - 07102001 | Staff"
  },
  {
    "gambar": "abcseven.png",
    "nama": "Darlene Robertson",
    "subtitle": "UDC - 07102001 | Staff"
  },
  {
    "gambar": "abceight.png",
    "nama": "Courtney Henry",
    "subtitle": "UDC - 07102001 | Staff"
  },
];

class ListAttendance extends StatefulWidget {
  const ListAttendance({Key? key}) : super(key: key);

  @override
  _ListAttendanceState createState() => _ListAttendanceState();
}

class _ListAttendanceState extends State<ListAttendance> {
  String _selectedDate = 'Tap to select date';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? d = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(
        2021,
        10,
      ),
      lastDate: DateTime(2022),
    );
    if (d != null)
      setState(() {
        _selectedDate = new DateFormat.yMMMMd("en_US").format(d);
      });
  }

  late final String title;
  @override
  Widget build(BuildContext context) {
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
          "List Attendance",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
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
                          // Icon(
                          //   Icons.filter,
                          //   size: 18,
                          //   color: Colors.black,
                          // ),
                          Image(
                              image: AssetImage(
                                'assets/icons/filter.png',
                              ),
                              color: Colors.black,
                              height: 15,
                              width: 18),
                        ],
                      ),
                    ),
                    onTap: () {
                      InkWell(
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, right: 25),
                        ),
                        onTap: () {},
                      );
                      _tripEditModalBottomSheet(context);
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 41,
                    width: 115,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "This Month",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 18,
                          color: Color(0xff27AE60),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 750,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: dataa.length,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 15,
                          ),
                          width: double.infinity,
                          child: Card(
                            elevation: 0,
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/${dataa[index]['gambar']}')),
                                      borderRadius: BorderRadius.circular(2)),
                                  // child: Image(
                                  //   image: AssetImage(
                                  //       'assets/icons/${dataa[index]['gambar']}'),
                                  //   height: 50,
                                  // ),
                                ),
                                title: Text(
                                  "${dataa[index]['nama']}",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff27AE60)),
                                ),
                                subtitle: Text(
                                  "${dataa[index]['subtitle']}",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0XFF333333)),
                                ),
                                trailing: InkWell(
                                  child: Icon(
                                    Icons.info_outline,
                                    size: 25,
                                    color: Color(0xff333333),
                                  ),
                                  onTap: () {
                                    _openDialogBox();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  _openDialogBox() {
    return showGeneralDialog(
        context: context,
        barrierLabel: '',
        transitionDuration: Duration(milliseconds: 600),
        barrierDismissible: true,
         barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return Animations.fromBottom(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) {
          return AlertDialog(
            content: Container(
                height: 199,
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Attendance ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff27AE60),
                              fontWeight: FontWeight.bold),
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
                      height: 15,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Mulai Kerja",
                              style: TextStyle(
                                  fontSize: 9, color: Color(0xff333333)),
                            ),
                            Container(
                              height: 20,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Colors.grey),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "09.20 WIB",
                                  style: TextStyle(fontSize: 9),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Istirahat",
                                  style: TextStyle(fontSize: 9),
                                ),
                                Container(
                                  height: 20,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.grey),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "12.00 WIB",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Continue",
                                  style: TextStyle(fontSize: 9),
                                ),
                                Container(
                                  height: 20,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.grey),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "13.00 WIB",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Pulang",
                              style: TextStyle(fontSize: 9),
                            ),
                            Container(
                              height: 20,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Colors.grey),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "17.20 WIB",
                                  style: TextStyle(fontSize: 9),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(fontSize: 9),
                                ),
                                Container(
                                  height: 20,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.grey),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "8 Jam",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(fontSize: 9),
                                ),
                                Container(
                                  height: 20,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.grey),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Full Time",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Color(0xff27AE60)),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          );
        });
  }

  void _tripEditModalBottomSheet(context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0.0)),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext bc) {
        return Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Container(
            height: 347.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sort by : ",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 41,
                        width: 89,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: Color(0xffEBEBF0), width: 2)),
                        child: Center(
                          child: InkWell(
                            child: Text(
                              "Full Time",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff828282)),
                            ),
                            onTap: () async {
                              final number = await showCupertinoDialog(
                                  barrierDismissible: true,
                                  context: context,
                                  builder: createDialog);
                              print('Apakah diizinkan ? $number');

                              switch (number) {
                                case 1:
                                  print('decline');
                                  break;
                                case 2:
                                  print('approved');
                                  break;
                              }
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          height: 41,
                          width: 99,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Color(0xffEBEBF0), width: 2)),
                          child: Center(
                            child: Text(
                              "Tidak Hadir",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff828282)),
                            ),
                          ),
                        ),
                        onTap: () async {
                          final number = await showCupertinoDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: createDialog);
                          print('Apakah diizinkan ? $number');

                          switch (number) {
                            case 1:
                              print('decline');
                              break;
                            case 2:
                              print('approved');
                              break;
                          }
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          height: 41,
                          width: 96,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Color(0xffEBEBF0), width: 2)),
                          child: Center(
                            child: Text(
                              "Minus Jam",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff828282)),
                            ),
                          ),
                        ),
                        onTap: () async {
                          final number = await showCupertinoDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: createDialog);
                          print('Apakah diizinkan ? $number');

                          switch (number) {
                            case 1:
                              print('decline');
                              break;
                            case 2:
                              print('approved');
                              break;
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Start",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffE0E0E0), width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Text(_selectedDate,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xFF000000))),
                            onTap: () {
                              _selectDate(context);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.date_range_sharp,
                              color: Color(0xff27AE60),
                            ),
                            tooltip: '07 Agutus 2021',
                            onPressed: () {
                              _selectDate(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "End",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffE0E0E0), width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Text(_selectedDate,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xFF000000))),
                            onTap: () {
                              _selectDate(context);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.date_range_sharp,
                              color: Color(0xff27AE60),
                            ),
                            tooltip: '09 Agutus 2021',
                            onPressed: () {
                              _selectDate(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 41,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Color(0xff27AE60),
                      child: Center(
                        child: Text(
                          "OK",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget createDialog(BuildContext context) => CupertinoAlertDialog(
        title: Text(
          "Apakah diiizinkan?",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        actions: [
          CupertinoDialogAction(
            child: Text(
              "No, Decline!",
              style: TextStyle(
                fontSize: 14,
                color: Colors.red,
              ),
            ),
            onPressed: () => Navigator.pop(context, 1),
          ),
          CupertinoDialogAction(
            child: Text(
              "Yes, Approve it!",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff27AE60),
              ),
            ),
            onPressed: () => Navigator.pop(
              context,
              2,
            ),
          ),
        ],
      );
}
