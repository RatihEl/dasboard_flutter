
import 'package:booking_management_dashboard/GeneralView/SideBar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'RightSideWdiget.dart';
import 'body_content_widget.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_,sizingInformation){
        return Scaffold(
          body: Stack(
            children: [
              Row(
                children: [
                  SidebarView(),
                  BodyContentWidget(sizingInformation: sizingInformation,),

                ],
              ),
              Positioned(child: RightSideWidget(),bottom: 0.0,top: 0.0,right: 0.0,)
            ],
          ),
        );
      },
    );
  }
}
