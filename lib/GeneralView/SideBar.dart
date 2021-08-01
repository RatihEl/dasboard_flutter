import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SidebarView extends StatefulWidget {
   @override
 _SidebarViewState createState() => _SidebarViewState();
}

class _SidebarViewState extends State<SidebarView> {
    int _buttonCurrentIndex = 0;
    int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
   
      width: 70,
      height: MediaQuery.of(context).size.height,
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
      child: Column(
        
        children: [
          _Drawer(),
          _colButtons(),
         
        ],
      ),
    );
  }

  Widget _Drawer() {
    return Container(
      
      width: 45,
      height: 45,
      child: Icon(Icons.menu),
    );
  }

  Widget _colSingleButton({ IconData icon,  Color borderColor, Color iconColor, bool selected, }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Container(
        width: 70,
        child: Icon(icon,color: iconColor,),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 2,
              color: borderColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _colButtons() {
    return Container(
        margin: EdgeInsets.only(top: 25),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  _buttonCurrentIndex = 0;
                  _selectedDestination = 0;
                });
              },
              child: _colSingleButton(
                  icon: Icons.mode_rounded,
                  iconColor: _buttonCurrentIndex == 0
                      ? Colors.indigo
                      : Colors.black,
                  borderColor: _buttonCurrentIndex == 0
                      ? Colors.deepOrange
                      : Colors.transparent,
                     
                  ),
                      
                      
               ),
          InkWell(
              onTap: () {
                setState(() {
                  _buttonCurrentIndex = 1;
                });
              },
              child: _colSingleButton(
                  icon: Icons.score,
                  iconColor: _buttonCurrentIndex == 1
                      ? Colors.indigo
                      : Colors.black,
                  borderColor: _buttonCurrentIndex == 1
                      ? Colors.deepOrange
                      : Colors.transparent)),
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 2;
              });
            },
            child: _colSingleButton(
                icon: Icons.calendar_today,
                iconColor: _buttonCurrentIndex == 2
                    ? Colors.indigo
                    : Colors.black,
                borderColor: _buttonCurrentIndex == 2
                    ? Colors.deepOrange
                    : Colors.transparent),
                    
          ),
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 3;
              });
            },
            child: _colSingleButton(
                icon: Icons.pages,
                iconColor: _buttonCurrentIndex == 3
                    ? Colors.indigo
                    : Colors.black,
                borderColor: _buttonCurrentIndex == 3
                    ? Colors.deepOrange
                    : Colors.transparent),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 4;
              });
            },
            child: _colSingleButton(
                icon: Icons.message,
                iconColor: _buttonCurrentIndex == 4
                    ? Colors.indigo
                    : Colors.black,
                borderColor: _buttonCurrentIndex == 4
                    ? Colors.deepOrange
                    : Colors.transparent),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 5;
              });
            },
            child: _colSingleButton(
                icon: Icons.settings,
                iconColor: _buttonCurrentIndex == 5
                    ? Colors.indigo
                    : Colors.black,
                borderColor: _buttonCurrentIndex == 5
                    ? Colors.deepOrange
                    : Colors.transparent),
          ),
        ],
      ),
    );
  }

  
 void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
  

