import 'package:flutter/material.dart';

class NotificationModel implements Comparable {
  final String title;
  final String message;
  final DateTime notificationDate;

  NotificationModel({
    @required this.title,
    @required this.notificationDate,
    @required this.message,
  });

  @override
  int compareTo(other) {
    return notificationDate.compareTo(other.notificationDate);
  }
}
