import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TheDoanhThu extends StatelessWidget {
  final String somot;
  final String sohai;
  final String noidung1;
  final String noidung2;
  TheDoanhThu({
    required this.somot,
    required this.sohai,
    required this.noidung1,
    required this.noidung2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
        child: Card(
          child: Row(
            children: [
              Icon(Icons.confirmation_number,color: Colors.blue.shade900,size: 50),
              Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(somot,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text(noidung1)
                  ],
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(sohai,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text(noidung2),
                  ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
