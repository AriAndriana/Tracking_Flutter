import 'package:flutter/material.dart';

class Global{
  final String name;
  final String value;

  Global({
    @required this.name,
    @required this.value
  });
  factory Global.fromJson(Map<String, dynamic> json){
    return Global(
      name: json['name'] as String,
      value: json['value'] as String
    );
  }
}