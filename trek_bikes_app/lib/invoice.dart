// ignore: unused_import
import 'package:flutter/material.dart';

class Invoice {
  final int id;
  final String? memberId;
  final int statusId ;
  final DateTime? dated;
  Invoice({
    required this.id,
    required this.memberId,
    required this.statusId,
    required this.dated,


  });
  Map<String, Object?> toMap(){
    return{
      'id': id,
      'memberId': memberId,
      'statusId': statusId,
      'dated': dated,
    };
  }

  factory Invoice.fromMap(Map<String, dynamic> map) {
    return Invoice(
      id: map['id'],
      memberId: map['memberId'],
      statusId: map['statusId'],
      dated: DateTime.parse(map['dated']),

    );
  }
}
