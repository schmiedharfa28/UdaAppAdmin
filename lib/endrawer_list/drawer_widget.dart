import 'package:flutter/material.dart';
import 'package:udaapp_admin/endrawer_list/attendance.dart';
import 'package:udaapp_admin/endrawer_list/list_attendance.dart';
import 'package:udaapp_admin/endrawer_list/list_cuti.dart';
import 'package:udaapp_admin/endrawer_list/list_permit.dart';
import 'package:udaapp_admin/endrawer_list/news.dart';
import 'package:udaapp_admin/endrawer_list/our_team.dart';
import 'package:udaapp_admin/endrawer_list/salarystaff.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _drawerItem(text: "Home", onTap: () {}),
            Divider(thickness: 1),
            _drawerItem(
                text: "Attendance",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Attendance()));
                }),
            Divider(thickness: 1),
            _drawerItem(
                text: "List Attendance",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListAttendance()));
                }),
            Divider(thickness: 1),
            _drawerItem(
                text: "List Permit",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListPermit()));
                }),
            Divider(thickness: 1),
            _drawerItem(
                text: "List Cuti",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListCuti()));
                }),
            Divider(thickness: 1),
            _drawerItem(
                text: "Our Team",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OurTeam()));
                }),
            Divider(thickness: 1),
            _drawerItem(
                text: "Salary Staff",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SalaryStaff()));
                }),
            Divider(thickness: 1),
            _drawerItem(
                text: "News",
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => News()));
                }),
            Divider(thickness: 1),
            SizedBox(
              height: 182,
            ),
            Divider(thickness: 1),
            //   _drawerItem(
            // text: "Log out",
            // onTap: () {
            //   Navigator.push(
            //           context, MaterialPageRoute(builder: (context) => News()));
            // }),
            Container(
              width: double.infinity,
              height: 51,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(
      {required String text, required GestureTapCallback onTap}) {
    return Container(
        width: 50,
        height: 46,
        child: ListTile(
          title: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff333333),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          onTap: onTap,
        ));
  }
}
