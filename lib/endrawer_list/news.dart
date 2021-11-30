import 'package:flutter/material.dart';
import 'package:udaapp_admin/endrawer_list/detail_news.dart';
import 'package:udaapp_admin/endrawer_list/news_add.dart';

List<Map<dynamic, String>> hewan = [
  {
    "gambar": "kijang.png",
    "nama": "Egestas lectus nullam amet",
    "name": "venenatis odio.",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "burung.png",
    "nama": "Adipiscing ut enim mauris,",
    "name": "tincidunt in dis ipsum quam.",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "singa.png",
    "nama": "Dui, interdum elit urna in",
    "name": "cursus. Consectetur..",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "kura.png",
    "nama": "Non scelerisque ege",
    "name": "adipiscing nulla mi leo.",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "rusajuga.png",
    "nama": "Vestibulum id elit dolor",
    "name": "suspendisse at ipsum.",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "macan.png",
    "nama": "Sed pellentesque tempor sed",
    "name": "nulla adipiscing. ",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "fox.png",
    "nama": "Arcu hac suspendisse ac",
    "name": "maecenas facilisis quis sed. ",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "bangau.png",
    "nama": "Non erat feugiat sed ",
    "name": "phasellus magna lacinia.",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "kupu.png",
    "nama": "Pharetra, vitae nec massa",
    "name": "venenatis aliquet ut. Dui.",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "foxputih.png",
    "nama": "Mattis dolor quis tortor est",
    "name": "lectus vehicula id. At dolor.",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
  {
    "gambar": "mouse.png",
    "nama": "Id sed fringilla pellentesque",
    "name": "orci, sit luctus ipsum. Nulla.",
    "subtitle": "09 September 2021  |  09.00 WIB",
  },
];

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<Map<dynamic, String>> dataList = [
    {
      "gambar": "sliderone.png",
    },
    {
      "gambar": "slidertwo.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
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
            "News",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 10, right: 20, left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 209,
                  width: 600,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailNews()));
                        },
                        child: Container(
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              height: 200,
                              width: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                        'assets/icons/${dataList[index]['gambar']}',
                                        height: 200,
                                        width: 300,
                                        fit: BoxFit.cover),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 1130,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      // physics: ClampingScrollPhysics(),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: hewan.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/icons/${hewan[index]['gambar']}'),
                                      height: 80,
                                      width: 80,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${hewan[index]['nama']}",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${hewan[index]['name']}",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${hewan[index]['subtitle']}",
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xffBDBDBD)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NewsAdd()));
          },
          child: Container(
            height: 50,
            width: 50,
            child: Icon(
              Icons.add,
              size: 33,
              color: Color(0xff219653),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }
}
