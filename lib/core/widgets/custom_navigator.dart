import 'package:flutter/cupertino.dart';

class CustomNavigatorShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double height = size.height * 2; // Double the height

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0007893, size.height * 0.0006453047);
    path_0.lineTo(size.width * 0.2293643, size.height * 0.0006453047);
    path_0.cubicTo(
        size.width * 0.2293643,
        size.height * 0.0006453047,
        size.width * 0.2686518,
        height * 0.9995907,
        size.width * 0.2293643,
        height * 0.9763442);
    path_0.cubicTo(
        size.width * 0.1900786,
        height * 0.9530977,
        size.width * 0.1806018,
        height * 0.4420326,
        size.width * 0.1411429,
        height * 0.2097237);
    path_0.cubicTo(
        size.width * 0.1016839,
        height * -0.02258565,
        size.width * 0.0007893,
        size.height * 0.0006453047,
        size.width * 0.0007893,
        size.height * 0.0006453047);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffC6C6BA).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9992107, size.height * 0.0006453047);
    path_1.lineTo(size.width * 0.7706357, size.height * 0.0006453047);
    path_1.cubicTo(
        size.width * 0.7706357,
        size.height * 0.0006453047,
        size.width * 0.7313482,
        height * 0.9995907,
        size.width * 0.7706357,
        height * 0.9763442);
    path_1.cubicTo(
        size.width * 0.8099214,
        height * 0.9530977,
        size.width * 0.8193982,
        height * 0.4420326,
        size.width * 0.8588571,
        height * 0.2097237);
    path_1.cubicTo(
        size.width * 0.8983161,
        height * -0.02258565,
        size.width * 0.9992107,
        size.height * 0.0006453047,
        size.width * 0.9992107,
        size.height * 0.0006453047);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffC6C6BA).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    // The middle Shape
    Path path_2 = Path();
    path_2.moveTo(size.width * 0.2281750, 0);
    path_2.lineTo(size.width * 0.7710321, 0);
    path_2.lineTo(size.width * 0.7710321, height * 0.9767442);
    path_2.lineTo(size.width * 0.2281750, height * 0.9767442);
    path_2.lineTo(size.width * 0.2281750, 0);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffC6C6BA).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
