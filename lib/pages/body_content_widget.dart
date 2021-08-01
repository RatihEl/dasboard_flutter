import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../chart/LineChart.dart';

class BodyContentWidget extends StatefulWidget {
  final SizingInformation sizingInformation;

  const BodyContentWidget({Key key, this.sizingInformation}) : super(key: key);

  @override
  _BodyContentWidgetState createState() => _BodyContentWidgetState();
}

class _BodyContentWidgetState extends State<BodyContentWidget> {
  int _rowCurrentBtnIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      width: widget.sizingInformation.screenSize.width / 1.4,
      child: Column(
        children: [
          _headerWidget(),
          _quickStatsWidget(),
          _quickStats(),
          _ChartWidget(),
          SizedBox(
            height: 5,
          ),
          // _gridListItems(),
        ],
      ),
    );
  }

  Widget _headerWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 2,
              offset: Offset(0.5, 0.0),
              spreadRadius: 2)
        ],
      ),
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "OVERVIEW",
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            child: Text(
              "ANALYSIS",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            child: Text(
              "MARKETS",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            child: Text(
              "CHARTS",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            child: Text(
              "TRADES",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            child: Text(
              "NEWS",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            child: Text(
              "TIMELINE",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            child: Text(
              "INFLUENCE",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _quickStatsWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                  "Lates Ethereum(ETH) Price Chart",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "207.96",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ],
          ),
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Icon(
                Icons.replay_outlined,
                color: Colors.grey,
              )),
          Container(
           
      
            child: OutlineButton(
              child: new Text(
                "Hour",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Poppins",
                ),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          Container(
             margin: EdgeInsets.only(left: 10),
           
          
            child: OutlineButton(
              child: new Text(
                "Day",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          Container(
         margin: EdgeInsets.only(left: 10),
           
            child: OutlineButton(
              child: new Text("Week",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  )),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
          
            child: OutlineButton(
              child: new Text(
                "Month",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          Container(
           margin: EdgeInsets.only(left: 10),
          
            child: OutlineButton(
              child: new Text(
                "Year",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  Widget _quickStats() {
    return Container(
      padding: EdgeInsets.only(top: 40.0),
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.sizingInformation.screenSize.width / 1.4 <= 860
              ? _row2by2Widget()
              : _row4Widget()
        ],
      ),
    );
  }

  Widget _row4Widget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _singleItemQuickStats(
          title: "Market Cap",
          value: "28,7890",
          textColor: Colors.grey,
        ),
        _singleItemQuickStats(
            title: "Volume 24h", value: "78,8099 k", textColor: Colors.grey),
        _singleItemQuickStats(
            title: "Open 24h", value: "203.74", iconColor: Colors.grey),
        _singleItemQuickStats(
          title: "Low/Hight",
          value: "193.47 - 204.07",
          textColor: Colors.grey,
        ),
      ],
    );
  }

  Widget _row2by2Widget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _singleItemQuickStats(
              title: "Market Cap",
              value: "28,345",
              width: widget.sizingInformation.screenSize.width / 3.1,
              icon: null,
              textColor: Colors.grey,
            ),
            _singleItemQuickStats(
                title: "Volume 24h",
                value: "78,8099 k",
                icon: null,
                width: widget.sizingInformation.screenSize.width / 3.1,
                textColor: Colors.grey),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _singleItemQuickStats(
                title: "Open 24h",
                value: "203.74",
                textColor: Colors.grey,
                width: widget.sizingInformation.screenSize.width / 3.1),
            _singleItemQuickStats(
              title: "Volume 24h",
              value: "78,8099 k",
              width: widget.sizingInformation.screenSize.width / 3.1,
            ),
          ],
        ),
      ],
    );
  }

  Widget _singleItemQuickStats(
      {String title,
      Color textColor = Colors.black,
      String value,
      IconData icon,
      double width,
      Color iconColor}) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(8)),
      
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontFamily: "Poppins",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          icon == null
              ? Text(
                  value,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Icon(
                      icon,
                      color: iconColor,
                    )
                  ],
                ),
        ],
      ),
    );
  }
}

Widget _ChartWidget() {
  return Expanded(
    child: Container(
      width: 880,
      height: 400,
      margin: EdgeInsets.only(top: 30, right: 20, left: 20),
      child: LineChartSample1(),
    ),
  );
}
