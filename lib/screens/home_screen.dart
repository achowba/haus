import 'package:flutter/material.dart';

import 'package:haus/constants/colors.dart';
import 'package:haus/widgets/cards.dart';
import 'package:haus/widgets/line.dart';
import 'package:haus/widgets/tag.dart';

class HouseLists extends StatelessWidget {
    @override
    Widget build (BuildContext context) {
        return SafeArea(
            child: ListView(
                children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(
                            top: 15.0,
                            left: 30.0,
                            right: 30.0,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                Text(
                                    'City',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18.0,
                                        color: darkBlueCol.withOpacity(0.3),
                                        fontWeight: FontWeight.w400
                                    ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                    'San Francisco',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        color: darkBlueCol,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w600
                                    ),
                                ),
                                SizedBox(height: 10,),
                                // RoundedIcon(LineIcons.bars, darkBlueCol, iconBorderCol),
                                // RoundedIcon(LineIcons.sliders, darkBlueCol, iconBorderCol),
                            ],
                        ),
                    ),
                    Line(),
                    Container(
                        margin: EdgeInsets.only(
                            top: 20.0,
                            left: 30.0,
                            right: 30.0,
                        ),
                        height: 55,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                                Tag('< \$220.000'),
                                Tag('For Sale'),
                                Tag('3-4 Beds'),
                            ],
                        ),
                    ),
                    Cards(),
                    /* Positioned(
                        left: 0.0,
                        bottom: 0.0,
                        right: 0.0,
                        child: new Align(
                            // alignment: Alignment.center,
                            alignment: FractionalOffset.bottomCenter,
                            child: Button(LineIcons.compass, 'Map View')
                        ),
                    ), */
                ],
            ),
        );
    }
}
