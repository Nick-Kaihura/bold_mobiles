import 'dart:ui';

class ColorUtil {
  Color getColor(String color) {
    String colorString = color.replaceAll('#', '0xff');
    return Color(int.parse(colorString));
  }
}
