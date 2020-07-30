import 'package:flutter/material.dart';

class House {
    final String id;
    final String price;
    final String imageUrl;
    final String address;
    final String numberOfBedrooms;
    final String numberOfBathrooms;
    final String numberOfGarage;
    final String area;
    final bool isLiked;

    const House({
        @required this.id,
        @required this.price,
        @required this.imageUrl,
        @required this.address,
        @required this.numberOfBedrooms,
        @required this.numberOfBathrooms,
        @required this.numberOfGarage,
        @required this.area,
        @required this.isLiked,
    });
}
