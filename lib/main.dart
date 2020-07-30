import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:haus/constants/colors.dart';

import 'package:haus/screens/home_screen.dart';
import 'package:haus/screens/house_details.dart';
import 'package:haus/widgets/appbar.dart';
import 'package:haus/widgets/rounded_icon.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            home: MyHomePage(),
            builder: (context, child) {
                return ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: child,
                );
            },
            theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            initialRoute: '/',
            routes: {
                // '/': (ctx) => HouseLists(),
                HouseDetails.routeName: (ctx) => HouseDetails(),
            },
            onUnknownRoute: (settings) { // this is equivalent to having a 404 page on web
                return MaterialPageRoute(builder: (ctx) => HouseLists());
            },
            debugShowCheckedModeBanner: false,
        );
    }
}

class MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                child: NavBar(
                    Colors.white,
                    RoundedIcon(LineIcons.bars, darkBlueCol, iconBorderCol.withOpacity(0.5)),
                    RoundedIcon(LineIcons.sliders, darkBlueCol, iconBorderCol.withOpacity(0.5)),
                ),
                preferredSize: Size.fromHeight(100.0)
            ),
            body: HouseLists(),
            /* bottomNavigationBar: Padding(
                padding: EdgeInsets.only(
                    bottom: 50
                ),
                child: new Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Button(LineIcons.compass, 'Map View')
                ),
            ) */
        );
    }
}

class MyBehavior extends ScrollBehavior {
    @override
    Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
        return child;
    }
}
