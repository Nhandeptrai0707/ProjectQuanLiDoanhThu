import 'package:appquanli/TheDoanhThu.dart';
import 'package:appquanli/trangthongke.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chart.dart';

class DoanhThu extends StatefulWidget {
  const DoanhThu({super.key});

  @override
  State<DoanhThu> createState() => _DoanhThuState();
}

class _DoanhThuState extends State<DoanhThu> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();
  String _selectedTime = 'Hôm nay';
  List<String> _timeOptions = ['Hôm nay', 'Hôm qua', 'Tuần này', 'Tháng này'];

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate ? _startDate : _endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue.shade900,
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TrangThongKe()));
          },
        ),
        centerTitle: true,
        title: Text(
          'Doanh Thu',
          style: TextStyle(
              color: Colors.blue.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Doanh thu vé",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
              Container(
                child: Column(children: [
                  TheDoanhThu(
                    somot: 100.toString(),
                    sohai: 87.toString(),
                    noidung1: 'Số vé đã mua',
                    noidung2: 'Số vé hôm qua đã bán',
                  ),
                  TheDoanhThu(
                    somot: '2,380',
                    sohai: "\$300.325",
                    noidung1: 'Số vé trước',
                    noidung2: 'Doanh thu tạm ứng',
                  ),
                  TheDoanhThu(
                    somot: '5,5',
                    sohai: '\$17',
                    noidung1: 'Vé/Đặt hàng',
                    noidung2: 'Trung bình giá vé',
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade900, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Align(
                          child: Text(
                            'Thời gian',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: -5,
                                    blurRadius: 8,
                                    offset: Offset(2, 2),
                                  )
                                ]),
                            child: Row(
                              children: [
                                Icon(Icons.calendar_month,
                                    color: Colors.blue.shade900),
                                SizedBox(width: 7),
                                DropdownButton<String>(
                                  value: _selectedTime,
                                  items: _timeOptions
                                      .map((option) => DropdownMenuItem<String>(
                                            value: option,
                                            child: Text(option),
                                          ))
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedTime = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Align(
                                  child: Text(
                                    'Từ ngày',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: GestureDetector(
                                      onTap: () => _selectDate(context, true),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 16),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(children: [
                                          Text('${_startDate.toLocal()}'
                                              .split(' ')[0]),
                                          Icon(Icons.arrow_drop_down)
                                        ]),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                          SizedBox(width: 95,),
                          Column(
                            children: [
                              Align(
                                child: Text(
                                  'Đến ngày',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () => _selectDate(context, false),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children:[ Text(
                                        "${_endDate.toLocal()}".split(' ')[0],
                                      ),
                                        Icon(Icons.arrow_drop_down),
                                      ]
                                    ),
                                  ),
                                ),
                              )
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                          child: Text('Xem',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue.shade900,
                            onPrimary: Colors.white
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
