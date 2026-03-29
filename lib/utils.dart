import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solidsoftware_testproject/constants.dart';

/// This function generates a random integer between [min] and [max]
int generateRandomInt(int min, int max) {
  final int colourRandomMax = max - min;

  return Random().nextInt(colourRandomMax) + min;
}

/// This function generates a random color from 0x000000 to 0xFFFFFFF
Color generateRandomColor() {
  final int randomRed = generateRandomInt(
    minRGBValue,
    maxRGBValue,
  );
  final int randomBlue = generateRandomInt(
    minRGBValue,
    maxRGBValue,
  );
  final int randomGreen = generateRandomInt(
    minRGBValue,
    maxRGBValue,
  );

  // The Color constructor takes the following bits:
  // 24-31 - alpha value
  // 16-23 - red value
  // 8-15 - green value
  // 0-7 - blue value
  // The code below shifts each value into its required position

  final int alphaValue = pow(opaqueAlpha, 24).toInt();
  final int redValue = pow(randomRed, 16).toInt();
  final int greenValue = pow(randomGreen, 8).toInt();
  final int blueValue = randomBlue;

  return Color(alphaValue + redValue + greenValue + blueValue);
}
