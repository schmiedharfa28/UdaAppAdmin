import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:udaapp_admin/animations/animations.dart';
import 'package:udaapp_admin/endrawer_list/attendance.dart';
import 'package:udaapp_admin/endrawer_list/drawer_widget.dart';
import 'package:udaapp_admin/endrawer_list/list_attendance.dart';
import 'package:udaapp_admin/endrawer_list/list_cuti.dart';
import 'package:udaapp_admin/endrawer_list/list_permit.dart';
import 'package:udaapp_admin/endrawer_list/news.dart';
import 'package:udaapp_admin/endrawer_list/our_team.dart';
import 'package:udaapp_admin/endrawer_list/salarystaff.dart';

const TWO_PI = 3.14 * 2;

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
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Mobile Developer (Kotlin)', 20, Color(0xffEB5757)),
      ChartData('Graphic Designer', 5, Color(0xff2D9CDB)),
      ChartData('UX Designer', 5, Color(0xff2F80ED)),
      ChartData('UI Designer', 5, Color(0xff6FCF97)),
      ChartData('Back End Developer', 10, Color(0xff27AE60)),
      ChartData('Front End Developer', 15, Color(0xff219653)),
      ChartData('Mobile Developer (Swift)', 10, Color(0xffF2C94C)),
      ChartData('Mobile Developer (Flutter)', 40, Color(0xffF2994A)),
    ];
    final size = 200.0;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffF7F7F9),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xffEBEBF0),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/icons/udadmin.png'),
                height: 29,
                width: 98,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.black),
          )
        ],
      ),
      endDrawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 25, right: 25),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.groups,
                        color: Color(0xff27AE60),
                        size: 30,
                      ),
                      Text(
                        "Total Team",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "50",
                        style: TextStyle(
                            fontSize: 48,
                            color: Color(0xff27AE60),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 470,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Status Staff",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              // Icon(Icons.date_range_rounded,
                              //     size: 24, color: Colors.black),
                              Image(
                                image: AssetImage('assets/icons/date.png'),
                                height: 24,
                                width: 24,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2021",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "50",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            children: [
                              Center(
                                child: TweenAnimationBuilder(
                                  builder: (context, value, child) {
                                    //  int percentage = (value*100).ceil();
                                    return Container(
                                      width: size,
                                      height: size,
                                      color: Colors.white,
                                      child: Stack(
                                        children: [
                                          ShaderMask(
                                            shaderCallback: (rect) {
                                              return SweepGradient(
                                                startAngle: 0.0,
                                                endAngle: TWO_PI,
                                                stops: [0.90, 0.90],
                                                center: Alignment.center,
                                                colors: [
                                                  Color(0xff10B479),
                                                  Color(0xffF2C94C),
                                                ],
                                              ).createShader(rect);
                                            },
                                            child: Container(
                                              width: size,
                                              height: size,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              width: size - 40,
                                              height: size - 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  duration: Duration(seconds: 4),
                                  tween: Tween(begin: 0.0, end: 1.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xff10B479),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Staff",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "90%",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12,
                        ),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffE5E5E5),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffF2C94C),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Magang",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "10%",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12,
                        ),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xffE5E5E5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 820,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Departement",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              // Icon(Icons.calendar_today,
                              //     size: 24, color: Colors.black),
                              Image(
                                image: AssetImage('assets/icons/date.png'),
                                height: 24,
                                width: 24,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2021",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "50",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Center(
                        child: Container(
                          child: SfCircularChart(
                            series: <CircularSeries>[
                              // Renders doughnut chart
                              DoughnutSeries<ChartData, String>(
                                  dataSource: chartData,
                                  pointColorMapper: (ChartData data, _) =>
                                      data.color,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y,
                                  innerRadius: '80%'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xffEB5757),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text("Mobile Developer (Kotlin)",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                          Text(
                            "20%",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffF2994A),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text("Mobile Developer (Flutter)",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                            Text(
                              "40%",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffF2C94C),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text("Mobile Developer (Swift)",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                            Text(
                              "10%",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xff219653),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text("Front End Developer",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                            Text(
                              "15%",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xff27AE60),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text("Back End Developer",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                            Text(
                              "10%",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xff6FCF97),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text("UI Designer",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                            Text(
                              "5%",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xff2F80ED),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text("UX Designer",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                            Text(
                              "5%",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xff2D9CDB),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text("Graphic Designer",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                            Text(
                              "5%",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE5E5E5),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "List Attendance",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      child: Text(
                        "See All",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff27AE60)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListAttendance()));
                      })
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 440,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 420,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          // scrollDirection: Axis.vertical,
                          itemCount: dataa.length,
                          itemBuilder: (context, index) {
                            return SingleChildScrollView(
                              child: ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/${dataa[index]['gambar']}')),
                                      borderRadius: BorderRadius.circular(2)),
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
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "List Cuti",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      child: Text(
                        "See All",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff27AE60)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListCuti()));
                      })
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 440,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 420,
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
                                    height: 70,
                                    width: double.infinity,
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "List Permit",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      child: Text(
                        "See All",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff27AE60)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListPermit()));
                      })
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 440,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 420,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: double.infinity,
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
                                                _openDialogBox2();
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.more_horiz,
                                                size: 16,
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.more_horiz,
                                                size: 16,
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.more_horiz,
                                                size: 16,
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
                                  Container(
                                    width: double.infinity,
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.more_horiz,
                                                size: 16,
                                                color: Colors.black,
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
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
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

  _openDialogBox2() {
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
                height: 323,
                width: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                    Text(
                      "Type Permit",
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
                        ],
                        // border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: 'Sakit',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
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
                            child: InkWell(
                                child: Container(
                                  child: Center(
                                      child: Text(
                                    "Decline",
                                    style: TextStyle(color: Colors.red),
                                  )),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                }),
                            onPressed: () {}),
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

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
