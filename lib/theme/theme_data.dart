import 'package:flutter/material.dart';
import 'package:coteccons_app/shared/shared.dart';

var appTheme = ThemeData(
    primarySwatch: hexToMaterialColor("#01BEB7"),
    primaryColor: hexToColor("#01BEB7"),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(hexToColor("#01BEB7")))));
