import 'package:flutter/material.dart';

class NewsAdd extends StatelessWidget {
  const NewsAdd({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffF2F2F2), width: 1),
                ),
                child: Center(
                  child: Text(
                    "PLACE YOUR IMAGE HERE\n             1920x1080",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffBDBDBD),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Title",
                style: TextStyle(fontSize: 12, color: Color(0xff27AE60)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 51,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffF2F2F2))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type your title here...',
                      hintStyle: TextStyle(fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Description",
                style: TextStyle(fontSize: 12, color: Color(0xff27AE60)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: 1,
                ),
                padding: EdgeInsets.only(bottom: 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffF2F2F2))),
                child: TextFormField(
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: 'Type your description here...',
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15, top: 10),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        "Reset",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  MaterialButton(
                      minWidth: 85,
                      height: 31,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Color(0xff27AE60),
                      child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
