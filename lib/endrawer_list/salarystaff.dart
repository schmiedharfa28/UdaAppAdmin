import 'package:flutter/material.dart';

List<Map<dynamic, String>> salary = [
  {
    "gambar": "salarysatu.png",
    "nama": "Raeihan Alvaro",
    "subtitle": "UDC-07102001",
    "month": "Rp 3.500.000",
    "minute": "Rp 1200",
    "alltime": "Rp 20.575.750",
    "button": "Pay Salary"
  },
  {
    "gambar": "salarydua.png",
    "nama": "Guy Hawkins",
    "subtitle": "UDC-07102001",
    "month": "Rp 3.500.000",
    "minute": "Rp 1200",
    "alltime": "Rp 20.575.750",
    "button": "Pay Salary"
  },
  {
    "gambar": "salarytiga.png",
    "nama": "Jane Cooper",
    "subtitle": "UDC-07102001",
    "month": "Rp 3.500.000",
    "minute": "Rp 1200",
    "alltime": "Rp 20.575.750",
    "button": "Pay Salary"
  },
  {
    "gambar": "salaryempat.png",
    "nama": "Wade Warren",
    "subtitle": "UDC-07102001",
    "month": "Rp 3.500.000",
    "minute": "Rp 1200",
    "alltime": "Rp 20.575.750",
    "button": "Pay Salary"
  },
  {
    "gambar": "salarylima.png",
    "nama": "Arlene McCoy",
    "subtitle": "UDC-07102001",
    "month": "Rp 3.500.000",
    "minute": "Rp 1200",
    "alltime": "Rp 20.575.750",
    "button": "Pay Salary"
  },
  {
    "gambar": "salaryenam.png",
    "nama": "Jacob Jones",
    "subtitle": "UDC-07102001",
    "month": "Rp 3.500.000",
    "minute": "Rp 1200",
    "alltime": "Rp 20.575.750",
    "button": "Pay Salary"
  },
  {
    "gambar": "salarytujuh.png",
    "nama": "Leslie Alexander",
    "subtitle": "UDC-07102001",
    "month": "Rp 3.500.000",
    "minute": "Rp 1200",
    "alltime": "Rp 20.575.750",
    "button": "Pay Salary"
  },
  {
    "gambar": "salarydelapan.png",
    "nama": "Jenny Wilson",
    "subtitle": "UDC-07102001",
    "month": "Rp 3.500.000",
    "minute": "Rp 1200",
    "alltime": "Rp 20.575.750",
    "button": "Pay Salary"
  }
];

class SalaryStaff extends StatefulWidget {
  @override
  _SalaryStaffState createState() => _SalaryStaffState();
}

class _SalaryStaffState extends State<SalaryStaff> {
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
          "Salary",
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
                children: [
                  InkWell(
                    child: Container(
                      height: 41,
                      width: 81,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffBDBDBD)),
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
                      _tripEditTigaModalBottomSheet(context);
                    },
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    child: Container(
                      width: 220,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffBDBDBD)),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff27AE60),
                            size: 24,
                          ),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: 'Search here...',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 3),
                        ),
                      ),
                    ),
                    onTap: () {
                      _tripEditTigaModalBottomSheet(context);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 2090,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    itemCount: salary.length,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Container(
                          height: 260,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/icons/${salary[index]['gambar']}'),
                                    height: 260,
                                    width: 150,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${salary[index]['nama']}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "${salary[index]['subtitle']}",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff27AE60)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Salary per Month",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xff27AE60)),
                                        ),
                                        Text(
                                          "${salary[index]['month']}",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Salary per Minute",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xff27AE60)),
                                        ),
                                        Text(
                                          "${salary[index]['minute']}",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Salary All of Time",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xff27AE60)),
                                        ),
                                        Text(
                                          "${salary[index]['alltime']}",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            MaterialButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                height: 28,
                                                minWidth: 104,
                                                color: Color(0xff27AE60),
                                                child: Center(
                                                  child: Text(
                                                    "${salary[index]['button']}",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                onPressed: () {}),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Color(0xffF2F2F2)),
                                              ),
                                              child: Center(
                                                child: Icon(Icons.person),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _tripEditTigaModalBottomSheet(context) {
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(0.0)),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.83,
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
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
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
        });
  }
}
