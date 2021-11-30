import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<Map<dynamic, String>> Listdata = [
  {
    "gambar": "dua.png",
    "nama": "Raeihan Alvaro",
    "subtitle": "UI UX Designer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "a.png",
    "nama": "Muhammad Dani",
    "subtitle": "Flutter Developer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "b.png",
    "nama": "Mark Gates",
    "subtitle": "Graphic Designer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "c.png",
    "nama": "Jeff Zucklenberg",
    "subtitle": "Flutter Developer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "d.png",
    "nama": "Oldy Manny",
    "subtitle": "Swift Developer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "e.png",
    "nama": "Beards Boy",
    "subtitle": "UX Designer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "f.png",
    "nama": "Adventry Hatsy",
    "subtitle": "Swift Developer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "g.png",
    "nama": "Niceol Eyeses",
    "subtitle": "Back End Developer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "h.png",
    "nama": "Darki Imagey",
    "subtitle": "Front end Developer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
  {
    "gambar": "i.png",
    "nama": "Takabbur Guy",
    "subtitle": "Kotlin Developer",
    "text": "Elit varius lacus in fames habitasse neque nisl.Risus.",
    "button": "See Profile"
  },
];

class OurTeam extends StatefulWidget {
  @override
  _OurTeamState createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  bool _flag = true;
  DateTime? _dateTime;

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
          "Our Team",
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
                          width: 18),
                    ],
                  ),
                ),
                onTap: () {
                  _tripEditduaModalBottomSheet(context);
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
                              "Grapic Desaigner",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
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
                              image: AssetImage('assets/icons/a.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Muhammad Dani",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
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
                              image: AssetImage('assets/icons/b.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Mark Gates",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Graphic Designer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
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
                              image: AssetImage('assets/icons/c.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Jeff Zucklenberg",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
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
                              image: AssetImage('assets/icons/d.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Oldy Manny",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Swift Developer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
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
                              image: AssetImage('assets/icons/e.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Beards Boy",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "UX Designer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
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
                              image: AssetImage('assets/icons/f.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Adventry Hatsy",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Swift Developer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
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
                              image: AssetImage('assets/icons/g.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Niceol Eyeses",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Back End Developer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
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
                              image: AssetImage('assets/icons/h.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Darki Imagey",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Front end Developer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
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
                              image: AssetImage('assets/icons/i.png'),
                              height: 100,
                              width: 135,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Takabbur Guy",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Kotlin Developer",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff27AE60)),
                            ),
                            SizedBox(height: 9),
                            Text(
                              "Elit varius lacus in fames\nhabitasse neque nisl.Risus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 9),
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
                                      child: Text("See Profil",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    // Container(
                    //   height: 1450,
                    //   color: Color(0xffF7F7F9),
                    //   width: double.infinity,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: StaggeredGridView.countBuilder(
                    //       // physics: ClampingScrollPhysics(),
                    //       physics: NeverScrollableScrollPhysics(),
                    //       shrinkWrap: true,
                    //       crossAxisCount: 4,
                    //       itemCount: 10,
                    //       itemBuilder: (BuildContext context, int index) =>
                    //           buildImageCard(index),
                    //       staggeredTileBuilder: (int index) =>
                    //           new StaggeredTile.count(2, index.isEven ? 3 : 3),
                    //       mainAxisSpacing: 5.0,
                    //       crossAxisSpacing: 5.0,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildImageCard(int index) => SizedBox(
  //       height: 259,
  //       child: Card(
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 13, left: 10, right: 10),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Image(
  //                 image:
  //                     AssetImage('assets/icons/${Listdata[index]['gambar']}'),
  //                 height: 100,
  //                 width: 135,
  //               ),
  //               SizedBox(
  //                 height: 5,
  //               ),
  //               Text(
  //                 "${Listdata[index]['nama']}",
  //                 style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
  //               ),
  //               Text(
  //                 "${Listdata[index]['subtitle']}",
  //                 style: TextStyle(fontSize: 9, color: Color(0xff27AE60)),
  //               ),
  //               SizedBox(
  //                 height: 5,
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 0),
  //                 child: Center(
  //                   child: Text(
  //                     "  ${Listdata[index]['text']}",
  //                     style: TextStyle(
  //                       fontSize: 8,
  //                       color: Colors.black,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                   child: MaterialButton(
  //                 onPressed: () {},
  //                 height: 25,
  //                 minWidth: 115,
  //                 child: Container(
  //                   decoration: BoxDecoration(
  //                       color: Color(0xff27AE60),
  //                       borderRadius: BorderRadius.circular(5)),
  //                   child: Center(
  //                       child: Text(
  //                     "${Listdata[index]['button']}",
  //                     style: TextStyle(color: Colors.white, fontSize: 9),
  //                   )),
  //                 ),
  //               )),
  //             ],
  //           ),
  //         ),
  //       ),
  //     );

  void _tripEditduaModalBottomSheet(context) {
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
