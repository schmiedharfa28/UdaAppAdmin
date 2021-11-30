import 'package:flutter/material.dart';

class DetailNews extends StatelessWidget {
  const DetailNews({Key? key}) : super(key: key);

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
          "",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('assets/icons/sliderone.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "BALI - ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "sit curabitur risus ornare facilisis eget. Facilisis - ",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "mus ac viverra consectetur sit et consectetur ac in. Venenatis maecenas gravida feugiat orci at morbi. Nulla egestas eu morbi pulvinar etiam. Nunc consequat vitae felis est volutpat interdum mus est.At et venenatis diam, bibendum tellus in. Nisl, etiam vulputate porta turpis sed purus.  ",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Non in lectus fermentum massa. Praesent nulla eleifend lacus integer amet. Lorem in at vulputate tortor nibh tempus. Ipsum mattis eleifend felis a et ut eget gravida. Non aliquet hac dui et aliquam ornare eu nec enim. Nibh diam tincidunt mi eget vitae odio. Magnis elit ridiculus blandit lobortis quam urna. Arcu vel, rhoncus eu massa nullam nulla.Morbi senectus a tempor sagittis integer. Tincidunt.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Venenatis pulvinar dolor blandit pretium nulla convallis cras scelerisque condimentum. Pharetra augue velit, accumsan, ipsum vel nulla bibendum venenatis, magna. Turpis leo faucibus aenean velit. At in orci in vitae. Pharetra in at ornare faucibus ut sit eu in dui. Quis volutpat lacus, arcu commodo justo. Sed ultricies sed faucibus quisque consequat eleifend ut luctus. Ut leo nulla id nulla nunc quam.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "09 September 2021  |  09.00 WIB",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
