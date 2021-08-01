import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../GeneralView/StruckCircle.dart';

class RightSideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: 300,
      height: 900,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            blurRadius: 2,
            offset: Offset(0.5, 0.0),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Wrap(
        children: [
          _TitleWidget(),
          _MenuWidget(),
          _FolowersWidget(),
          _CoinsWidget(),
        ],
      ),
    );
  }

  Widget _TitleWidget() {
    return Row(
      children: [
        Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xff2c274c),
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: Icon(
              Icons.stacked_bar_chart_outlined,
              color: Colors.white,
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Ethereum",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "Poppins",),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Follow +",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.blue,
                    fontFamily: "Poppins",),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _MenuWidget() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Details",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Poppins",),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "ICO",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontFamily: "Poppins",),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Features",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontFamily: "Poppins",),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Technology",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontFamily: "Poppins",),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Price",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,fontFamily: "Poppins",),
              ),
            ),
          ]),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod .',
                style: TextStyle(
                  letterSpacing: 2,
                  wordSpacing: 3,
                  height: 2,
                  fontFamily: "Poppins",
                ),
              ))
        ]);
  }

  Widget _FolowersWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 40),
          child: Text(
            "Folowers",
            style: TextStyle(color: Colors.grey, fontSize: 15, fontFamily: "Poppins",),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://imgix.bustle.com/wmag/2017/03/22/58d2c86b609930561b0faa55_2-Lede.jpg?w=900&h=1203&fit=crop&crop=faces&auto=format%2Ccompress'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://imgix.bustle.com/wmag/2017/03/22/58d2c86b609930561b0faa55_2-Lede.jpg?w=900&h=1203&fit=crop&crop=faces&auto=format%2Ccompress'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://imgix.bustle.com/wmag/2017/03/22/58d2c86b609930561b0faa55_2-Lede.jpg?w=900&h=1203&fit=crop&crop=faces&auto=format%2Ccompress'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              margin: EdgeInsets.only(top: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.blue[200],
              ),
              child: Text(
                "+58k",
                style: TextStyle(
                  fontFamily: "Poppins",
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
      ],
    );
  }
}

Widget _CoinsWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.only(top: 40),
        child: Text(
          "Similar Coins",
          style: TextStyle(color: Colors.grey, fontSize: 15, fontFamily: "Poppins",),
        ),
      ),
      Column(children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 40,
                height: 40,
                child: CustomPaint(
                    painter: CirclePainter(),
                    child: Icon(
                      Icons.backpack_rounded,
                      color: Colors.black,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 10),
                child: Text(
                  "Bitcoint",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 60),
                padding: EdgeInsets.only(left: 50),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ]),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 40,
                height: 40,
                child: CustomPaint(
                    painter: CirclePainter(),
                    child: Icon(
                      Icons.no_stroller_rounded,
                      color: Colors.black,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, right: 15),
                child: Text(
                  "NEO",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 60),
                padding: EdgeInsets.only(left: 50),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ]),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 40,
                height: 40,
                child: CustomPaint(
                    painter: CirclePainter(),
                    child: Icon(
                      Icons.light_mode_rounded,
                      color: Colors.black,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 10),
                child: Text(
                  "Litecoin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 60),
                padding: EdgeInsets.only(left: 50),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ]),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 40,
                height: 40,
                child: CustomPaint(
                    painter: CirclePainter(),
                    child: Icon(
                      Icons.iron_rounded,
                      color: Colors.black,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, right: 15),
                child: Text(
                  "IOTA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 60),
                padding: EdgeInsets.only(left: 50),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ]),
        
        ]),
    ],
  );
}
