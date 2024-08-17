import 'package:flutter/material.dart';
import 'trangthongke.dart';
class ManHinh31 extends StatelessWidget {

String? _selectedValue;
List<String> _sos = ['Tôi đang kinh doanh, chưa có hệ thống bán hàng',
                      'Tôi có dự định kinh doanh nhưng chưa bắt đầu',
                      'Tôi đang kinh doanh, nhưng sử dụng một hệ thống khác',
                      'Không, tôi chỉ muốn trải nghiệm sản phẩm'
                    ];

List<String> _sos1 = ['Thời trang',
                      'Khách sạn/du lịch',
                      'Công nghệ/phụ kiện',
                      'Dịch vụ',
                      'Khác',
                      'Tôi chưa biết kinh doanh gì'
                    ];
List<String> _sos2 = ['Không có số lượng nào',
                      'Có 5 số lượng',
                      'Có 10 số lượng',
                      'Có nhiều số lượng',
                      'Khác'
                    ];

  ManHinh31({super.key});


@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('assets/images/hinh31.png'),
              ),
              Container(
                padding: EdgeInsets.only(top: 10 , bottom: 10),
                child: Text(
                  'Chọn cửa hàng của bạn',
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10 , bottom: 10 , left: 10 , right: 10),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Bạn có đang kinh doanh',
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedValue,
                  items:_sos.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style:TextStyle(fontSize: 11)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState() {
                      _selectedValue = newValue;
                    };
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                  icon: Icon(
                      Icons.arrow_forward_ios
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10 , bottom: 10 , left: 10 , right: 10),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Ngành nghề kinh doanh của bạn?',
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedValue,
                  items:_sos1.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style:TextStyle(fontSize: 11)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState() {
                      _selectedValue = newValue;
                    };
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                  icon: Icon(
                      Icons.arrow_forward_ios
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10 , bottom: 30 , left: 10 , right: 10),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Số lượng cửa hàng/chi nhánh hiện có của bạn?',
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedValue,
                  items:_sos2.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style:TextStyle(fontSize: 11)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState() {
                      _selectedValue = newValue;
                    };
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                  icon: Icon(
                      Icons.arrow_forward_ios
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TrangThongKe()));
                  },
                  child: Text(
                      'Continue'
                  )
              )
            ],
          ),
        ),
      )
  );
}
}