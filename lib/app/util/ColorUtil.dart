import 'dart:ui';

class ColorUtil {
  Color getColor(String color) {
    return Color(int.parse(color.replaceAll('#', '0xff')));
  }
}
