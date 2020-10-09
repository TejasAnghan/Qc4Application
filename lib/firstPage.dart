import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  List<Color> _colors = [Colors.blue[800], Colors.blueAccent[200]];

  //List<double> _stops = [0.0, 0.7];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 260,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.topCenter,
                        colors: _colors,
                        // stops: [0.0, 0.3, 0.3, 0.7, 0.7, 1.0]
                        // stops: _stops,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: ListTile(
                  title: Text("Total Balance",
                      style: TextStyle(fontSize: 12, color: Colors.white70)),
                  subtitle: Text("Rp 9.000.000",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 25, left: 25, top: 120),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total Balance",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70)),
                          Text("Rp 9.000.000",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ],
                      ),
                    ),
                    // Spacer(),
                    Container(
                      height: 80,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total Balance",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70)),
                          Text("Rp 9.000.000",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 25, left: 25, top: 230),
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        //  color: list[new Random().nextInt(5)],
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                            0.0, // Move to right 10  horizontally
                            0 // Move to bottom 10 Vertically
                            ),
                      )
                    ]),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Spacer(),
                        Icon(Icons.send),
                        Text("Send"),
                        // Spacer()
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(Icons.send), Text("Send")],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(Icons.send), Text("Send")],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 300),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      child: Row(
                        children: [
                          Text(
                            "Todays Transactions",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          Text(
                            "see all",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                SizedBox(
                                  width: index == 0 ? 25 : 10,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Text(
                                    "Food",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 25, left: 25, top: 15, bottom: 20),
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: ListView.builder(
                              itemCount: 10,
                              // shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(),
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text("Coffee Latte"),
                                  subtitle: Text("Today , 10:00 am"),
                                  trailing: Text("-Rp25.00"),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //   bottomNavigationBar: ,
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
