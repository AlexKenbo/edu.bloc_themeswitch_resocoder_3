import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
class ThemeState extends Equatable {
  // * Отдаваемый в интерфейс Виджет (чаще виджет)
  final ThemeData themeData;
  ThemeState({
    @required this.themeData
  }) : super([themeData]);
}

