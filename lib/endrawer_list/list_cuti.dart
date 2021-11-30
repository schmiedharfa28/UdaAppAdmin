import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:udaapp_admin/animations/animations.dart';

class ListCuti extends StatefulWidget {
  const ListCuti({Key? key}) : super(key: key);

  @override
  _ListCutiState createState() => _ListCutiState();
}

class _ListCutiState extends State<ListCuti> {
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
          "List Cuti",
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
                          Image(
                              image: AssetImage(
                                'assets/icons/filter.png',
                              ),
                              color: Colors.black,
                              height: 15,
                              width: 18)
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
                    width: 15,
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
              SizedBox(height: 15),
              Container(  
                height: 600,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    // physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: double.infinity,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                                child: ListTile(
                                  leading: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/abcone.png')),
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                  title: Text(
                                    "Raeihan Alvaro",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff27AE60)),
                                  ),
                                  subtitle: Text(
                                    "UDC - 07102001 | Staff",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0XFF333333)),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          child: Icon(
                                            Icons.more_horiz,
                                            size: 16,
                                          ),
                                          onTap: () {
                                            _openDialogBox3();
                                          },
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Waiting",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.yellow),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
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
                                                  'assets/icons/abcone.png')),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                    ),
                                    title: Text(
                                      "Raeihan Alvaro",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff27AE60)),
                                    ),
                                    subtitle: Text(
                                      "UDC - 07102001 | Staff",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFF333333)),
                                    ),
                                    trailing: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            child: Icon(
                                              Icons.more_horiz,
                                              size: 16,
                                            ),
                                            onTap: () {
                                              _openDialogBox3();
                                            },
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Waiting",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.yellow),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
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
                                                  'assets/icons/abcone.png')),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                    ),
                                    title: Text(
                                      "Raeihan Alvaro",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff27AE60)),
                                    ),
                                    subtitle: Text(
                                      "UDC - 07102001 | Staff",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFF333333)),
                                    ),
                                    trailing: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            child: Icon(
                                              Icons.more_horiz,
                                              size: 16,
                                            ),
                                            onTap: () {
                                              _openDialogBox3();
                                            },
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Approved",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff27AE60)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
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
                                                  'assets/icons/abcone.png')),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                    ),
                                    title: Text(
                                      "Raeihan Alvaro",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff27AE60)),
                                    ),
                                    subtitle: Text(
                                      "UDC - 07102001 | Staff",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFF333333)),
                                    ),
                                    trailing: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            child: Icon(
                                              Icons.more_horiz,
                                              size: 16,
                                            ),
                                            onTap: () {
                                              _openDialogBox3();
                                            },
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Decline",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.red),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
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
                                                  'assets/icons/abcone.png')),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                    ),
                                    title: Text(
                                      "Raeihan Alvaro",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff27AE60)),
                                    ),
                                    subtitle: Text(
                                      "UDC - 07102001 | Staff",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFF333333)),
                                    ),
                                    trailing: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            child: Icon(
                                              Icons.more_horiz,
                                              size: 16,
                                            ),
                                            onTap: () {
                                              _openDialogBox3();
                                            },
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Approved",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff27AE60)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
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
                                                  'assets/icons/abcone.png')),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                    ),
                                    title: Text(
                                      "Raeihan Alvaro",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff27AE60)),
                                    ),
                                    subtitle: Text(
                                      "UDC - 07102001 | Staff",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFF333333)),
                                    ),
                                    trailing: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            child: Icon(
                                              Icons.more_horiz,
                                              size: 16,
                                              color: Colors.black,
                                            ),
                                            onTap: () {
                                              _openDialogBox3();
                                            },
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Approved",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff27AE60)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
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
                      InkWell(
                        child: Container(
                          height: 41,
                          width: 89,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Color(0xffEBEBF0), width: 2)),
                          child: Center(
                            child: Text(
                              "Approved",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff828282)),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          height: 41,
                          width: 72,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Color(0xffEBEBF0), width: 2)),
                          child: Center(
                            child: Text(
                              "Waiting",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff828282)),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          height: 41,
                          width: 72,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Color(0xffEBEBF0), width: 2)),
                          child: Center(
                            child: Text(
                              "Decline",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff828282)),
                            ),
                          ),
                        ),
                        onTap: () {},
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

  _openDialogBox3child() {
    // untuk dialog approved
    return showGeneralDialog(
        barrierLabel: '',
        transitionDuration: Duration(milliseconds: 600),
        barrierDismissible: true,
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return Animations.fromBottom(_animation, _secondaryAnimation, _child);
        },
        context: context,
        pageBuilder: (_animation, _secondaryAnimation, _child) {
          return AlertDialog(
            content: Container(
              height: 112,
              width: 320,
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        "Yakin?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff333333),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 41,
                          width: 127,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                          child: InkWell(
                              child: Center(
                                  child: Text(
                                "Batal",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )),
                              onTap: () {
                                Navigator.pop(context);
                              }),
                        ),
                        Container(
                          height: 41,
                          width: 127,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                          child: InkWell(
                            child: Center(
                                child: Text(
                              "Yes, Approve It!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xff27AE60)),
                            )),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  _openDialogBox3() {
    //untuk dialog cuti
    return showGeneralDialog(
        context: context,
        barrierLabel: '',
        transitionDuration: Duration(milliseconds: 600),
        barrierDismissible: true,
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return Animations.fromBottom(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) {
          return AlertDialog(
            content: Container(
                height: 247,
                width: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cuti ",
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
                    Text(
                      "Dari Tanggal",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey),
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: '07 Oktober 2021',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Sampai Tanggal",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey),
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: '09 Oktober 2021',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                            elevation: 1,
                            height: 28,
                            minWidth: 75,
                            color: Colors.white,
                            child: Container(
                              child: Center(
                                  child: Text(
                                "Decline",
                                style: TextStyle(color: Colors.red),
                              )),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        MaterialButton(
                            height: 28,
                            minWidth: 75,
                            color: Color(0xff27AE60),
                            child: Container(
                              child: Center(
                                  child: Text(
                                "Approve",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            onPressed: () {
                              _openDialogBox3child();
                            }),
                      ],
                    ),
                  ],
                )),
          );
        });
  }
}
