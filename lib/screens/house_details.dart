import 'package:flutter/material.dart';

import 'package:haus/constants/colors.dart';
import 'package:haus/data/houses.dart';
import 'package:haus/widgets/house_info_card.dart';

class HouseDetails extends StatefulWidget {
    static const routeName = '/house-detail'; // pass the routeName as a static variable

    @override
    _HouseDetailsState createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {

    @override
    Widget build (BuildContext context) {

        final houseId = ModalRoute.of(context).settings.arguments; // get the houseId from the route arguments
        final selectedHouse = DUMMY_HOUSES.firstWhere((house) => house.id == houseId);

        return Scaffold(
            backgroundColor: Colors.white,
            /* appBar: PreferredSize(
                child: NavBar(
                    Colors.transparent,
                    RoundedIcon(LineIcons.arrow_left, Colors.white, iconBorderCol.withOpacity(0.5)),
                    RoundedIcon(LineIcons.sliders, Colors.white, iconBorderCol.withOpacity(0.5)),
                ),
                preferredSize: Size.fromHeight(100.0)
            ), */
            body: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                        SliverAppBar(
                            // automaticallyImplyLeading: false,
                            elevation: 0,
                            titleSpacing: 0.0,
                            expandedHeight: 300.0,
                            floating: false,
                            pinned: false,
                            backgroundColor: Colors.transparent,
                            flexibleSpace: FlexibleSpaceBar(
                                background: Hero(
                                    tag: selectedHouse.imageUrl,
                                    child: Image.network(
                                        selectedHouse.imageUrl,
                                        fit: BoxFit.cover,
                                        alignment: Alignment.bottomCenter
                                    ),
                                ),
                            ),
                        ),
                    ];
                },
                body: ListView(
                    children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(
                                top: 10,
                                left: 30,
                                right: 35,
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                            Text(
                                                selectedHouse.price.toString(),
                                                style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    color: darkBlueCol,
                                                    fontSize: 30.0,
                                                    fontWeight: FontWeight.w800
                                                ),
                                            ),
                                            SizedBox(height: 8,),
                                            Text(
                                                selectedHouse.address.toString(),
                                                style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    color: darkBlueCol.withOpacity(0.5),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w600
                                                ),
                                            ),
                                        ],
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            top: 20,
                                            bottom: 20,
                                            left: 20,
                                            right: 20,
                                        ),
                                        child: Center(
                                            child: Text(
                                                '20 hours ago',
                                                style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    color: darkBlueCol,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w800
                                                ),
                                            ),
                                        ),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2,
                                                color: iconBorderCol.withOpacity(0.6)
                                            ),
                                            borderRadius: BorderRadius.circular(18)
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: 50,
                                left: 30,
                                bottom: 10,
                            ),
                            child: Text(
                                'House Information',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    color: darkBlueCol,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800
                                ),
                            ),
                        ),
                        Container(
                            color: Colors.white,
                            height: 150,
                            margin: EdgeInsets.only(
                                top: 15,
                                left: 30,
                            ),
                            child: ListView(
                                shrinkWrap: true,
                                physics: ClampingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                    HouseInfoCard(selectedHouse.area, 'Square Foot'),
                                    HouseInfoCard(selectedHouse.numberOfBedrooms, 'Bedrooms'),
                                    HouseInfoCard(selectedHouse.numberOfBathrooms, 'Bathrooms'),
                                    HouseInfoCard(selectedHouse.numberOfGarage, 'Garage'),
                                ],
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: 15,
                                left: 30,
                                right: 30,
                            ),
                            child: Text(
                                'Flawless 2 story on a family friendly cul-de-sac in the heart of Blue Valley! Walk in to an open floor plan floodeed w daylight, formal dining, private office screened-in lanal w fireplace, TV hookup & custom heaters that overlooks the lit basketball court. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    letterSpacing: 0.6,
                                    wordSpacing: 1,
                                    height: 1.3
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}


/* flexibleSpace: Container(
    padding: EdgeInsets.only(
        top: 25.0,
    ),
    margin: EdgeInsets.only(
        top: 30.0,
        left: 30.0,
        right: 30.0,
    ),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
            RoundedIcon(LineIcons.arrow_left, Colors.white, iconBorderCol.withOpacity(0.0)),
            RoundedIcon(LineIcons.heart_o, Colors.white, iconBorderCol.withOpacity(0.0)),
        ],
    ),
), */