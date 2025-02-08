

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String imagePath = "assets/images";
final String brandLogo = "$imagePath/brand-logo.png";


SvgPicture svgPicture (String imageName) {
  return SvgPicture.asset(imageName,fit: BoxFit.contain);
}