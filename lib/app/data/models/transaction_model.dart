import 'package:flutter/material.dart';

class TransactionModel {
  final String id;
  final String name;
  final DateTime date;
  final double price;
  final String productPrice;
  final String basic;
  final String pricePerKm;
  final String distance;
  final String distanceprice;
  final String pricePerDrop;
  final String drops;
  final String dropPrice;

  TransactionModel({
    @required this.productPrice,
    @required this.basic,
    @required this.pricePerKm,
    @required this.distance,
    // @required this.price,
    @required this.pricePerDrop,
    @required this.drops,
    @required this.dropPrice,
    @required this.id,
    @required this.name,
    @required this.date,
    @required this.price,
    @required this.distanceprice,
  });
}
