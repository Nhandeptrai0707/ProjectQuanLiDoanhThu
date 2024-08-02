
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListThongBao extends StatelessWidget{
final List<String> thongbaos;
ListThongBao({required this.thongbaos});
ListView _listView(){
  return ListView.builder(
    itemCount: thongbaos.length,
      itemBuilder: (context,index){
        return Column(children:[
          Card(shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(10)
          ),
            elevation: 10,
            color: Colors.blue.shade900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Column(
                  children:[
                    SizedBox(height: 5,),
                    ClipOval(
                    child: Container(
                      height: 50,
                        width: 50,
                        child: Icon(Icons.people,color: Colors.black,),
                      color: Colors.white,

                    ),
                  ),
                    SizedBox(height: 5,),
                  ],
                ),
                Expanded(
                  child: Column(
                      children: [
                      Text('Doanh thu',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      Text(thongbaos[index],style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(width: 50,),
              ],),)
        ]);
      });
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 145,
      child: _listView(),
    );
  }
}