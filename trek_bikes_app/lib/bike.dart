// ignore: unused_import
import 'package:flutter/material.dart';

class Bike {
  final int id;
  final int subCategoryId;
  final String name;
  final String imageUrl;
  final double price;
  final String? frame;
  final String? weight;
  final String? drivetrain;
  final String? wheels;
  final String? fork;
  final String? rearShock;
  final String? tires;
  final String? brakes;

  Bike({
    required this.id,
    required this.subCategoryId,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.frame,
    required this.weight,
    required this.drivetrain,
    required this.wheels,
    required this.fork,
    required this.rearShock,
    required this.tires,
    required this.brakes,
  });

  factory Bike.fromMap(Map<String, dynamic> map) {
    return Bike(
      id: map['id'],
      subCategoryId: map['subCategoryId'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      price: map['price'],
      frame: map['frame'],
      weight: map['weight'],
      drivetrain: map['drivetrain'],
      wheels: map['wheels'],
      fork: map['fork'],
      rearShock: map['rearShock'],
      tires: map['tires'],
      brakes: map['brakes'],
    );
  }
}
