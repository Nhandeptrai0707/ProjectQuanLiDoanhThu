import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class The extends StatelessWidget {
  final String tieude;
  final IconData icon;
  final int soluongtong;
  final Color mau;
  final List <String> tieudecons;
  final List <int> soluongs;
  The({
    required this.tieude,
    required this.icon,
    required this.soluongtong,
    required this.mau,
    required this.tieudecons, required this.soluongs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          color: Colors.white
      ),
      child: Card(
        color: Colors.blue.shade900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  CustomPaint(
                    painter: CircleProgressPainter(mau, soluongtong),
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        tieude,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        soluongtong.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                    ]
                  ),
                ],
              ),
              Spacer(),
              for(int i = 0;i<tieudecons.length;i++)
                Row(children: [
                  Text(tieudecons[i],style: TextStyle(color: Colors.white,fontSize: 12),),
                  Spacer(),
                  Text(soluongs[i].toString(),style: TextStyle(color: Colors.white,fontSize: 12),),
                ],),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final Color color;
  final int progress;

  CircleProgressPainter(this.color, this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Draw background circle
    canvas.drawCircle(center, radius, paint);

    // Draw progress arc
    final progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.round;

    final angle = 2 * 3.14 * (progress / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -3.14 / 2,
      angle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
