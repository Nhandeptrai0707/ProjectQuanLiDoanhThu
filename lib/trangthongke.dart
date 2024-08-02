import 'dart:ffi';

import 'package:appquanli/ListThongBao.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chart.dart';
import 'The.dart';

class TrangThongKe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StateTrangThongKe();
  }
}
class _StateTrangThongKe extends State<TrangThongKe> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<bool> _isSelected = [false, false, false, false, false, false, false];
  List<String> ngay = ['Hôm nay', 'Ngày mai', 'Ngày kia'];
  String ngaychon = 'Hôm nay';
  List<String> thongbaos = ['vietcombank','mb','ádasd','nhân','đẹp','trai'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
          backgroundColor: Colors.blue,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.white,
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          color: _isSelected[0] ? Colors.yellow : Colors.white,
                        ),
                        title: Text(
                          'Tổng quan',
                          style: TextStyle(
                            color:
                                _isSelected[0] ? Colors.yellow : Colors.white,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isSelected[0] = !_isSelected[0];
                            for (int i = 0; i < _isSelected.length; i++) {
                              if (i != 0) {
                                _isSelected[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.people,
                          color: _isSelected[1] ? Colors.yellow : Colors.white,
                        ),
                        title: Text(
                          'Khách hàng',
                          style: TextStyle(
                            color:
                                _isSelected[1] ? Colors.yellow : Colors.white,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isSelected[1] = !_isSelected[1];
                            for (int i = 0; i < _isSelected.length; i++) {
                              if (i != 1) {
                                _isSelected[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.card_giftcard,
                          color: _isSelected[2] ? Colors.yellow : Colors.white,
                        ),
                        title: Text(
                          'Khuyến mãi',
                          style: TextStyle(
                            color:
                                _isSelected[2] ? Colors.yellow : Colors.white,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isSelected[2] = !_isSelected[2];
                            for (int i = 0; i < _isSelected.length; i++) {
                              if (i != 2) {
                                _isSelected[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.area_chart,
                          color: _isSelected[3] ? Colors.yellow : Colors.white,
                        ),
                        title: Text(
                          'Báo cáo',
                          style: TextStyle(
                            color:
                                _isSelected[3] ? Colors.yellow : Colors.white,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isSelected[3] = !_isSelected[3];
                            for (int i = 0; i < _isSelected.length; i++) {
                              if (i != 3) {
                                _isSelected[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: _isSelected[4] ? Colors.yellow : Colors.white,
                        ),
                        title: Text(
                          'Thiết lập',
                          style: TextStyle(
                            color:
                                _isSelected[4] ? Colors.yellow : Colors.white,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isSelected[4] = !_isSelected[4];
                            for (int i = 0; i < _isSelected.length; i++) {
                              if (i != 4) {
                                _isSelected[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.contact_support,
                          color: _isSelected[5] ? Colors.yellow : Colors.white,
                        ),
                        title: Text(
                          'Hỗ trợ',
                          style: TextStyle(
                            color:
                                _isSelected[5] ? Colors.yellow : Colors.white,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isSelected[5] = !_isSelected[5];
                            for (int i = 0; i < _isSelected.length; i++) {
                              if (i != 5) {
                                _isSelected[i] = false;
                              }
                            }
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.notifications,
                          color: _isSelected[6] ? Colors.yellow : Colors.white,
                        ),
                        title: Text(
                          'Thông báo',
                          style: TextStyle(
                            color:
                                _isSelected[6] ? Colors.yellow : Colors.white,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isSelected[6] = !_isSelected[6];
                            for (int i = 0; i < _isSelected.length; i++) {
                              if (i != 6) {
                                _isSelected[i] = false;
                              }
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.white,
                ),
                Container(
                  child: SizedBox(
                    height: 200,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text(
                    'Đăng xuất',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Đăng Xuất')));
                  },
                )
              ],
            ),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _scaffoldKey.currentState?.openDrawer();
                          });
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.blue,
                        )),
                    Flexible(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'Tìm Kiếm',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 10.0),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Tin Nhắn')));
                        },
                        icon: Icon(
                          Icons.messenger,
                          color: Colors.blue,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                    value: ngaychon,
                    onChanged: (String? vl) {
                      setState(() {
                        ngaychon = vl!;
                      });
                    },
                    selectedItemBuilder: (BuildContext context) {
                      return ngay.map<Widget>((e) {
                        return Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(
                              width: 10,
                            ),
                            Text(e)
                          ],
                        );
                      }).toList();
                    },
                    items: ngay.map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                  )),
                ]),
              ),
              Container(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Container(
                      child: The(
                        tieude: 'Khách Hàng',
                        tieudecons: ['số lượng khách'],
                        soluongs: [10],
                        icon: Icons.people,
                        soluongtong: 10,
                        mau: Colors.greenAccent,
                      ),
                    ),
                    Container(
                      child: The(
                        tieude: 'Tổng hóa đơn',
                        tieudecons: [
                          'thanh toán trực tiếp',
                          'thanh toán online'
                        ],
                        soluongs: [20, 10],
                        icon: Icons.confirmation_number,
                        soluongtong: 30,
                        mau: Colors.purpleAccent,
                      ),
                    ),
                    Container(
                      child: The(
                        tieude: 'Doanh thu',
                        icon: Icons.area_chart,
                        soluongtong: 50,
                        mau: Colors.yellow,
                        soluongs: [10],
                        tieudecons: ['lượt vào cổng'],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.area_chart,
                            color: Colors.blue,
                          ),
                          Text(
                            'Doanh thu',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ))
                ],
              ),
              Container(
                height: 180,
                child: Chart(),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){},
                child: Text('Chi tiết',style: TextStyle(fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade900,onPrimary: Colors.white),),
              Row(children: [Expanded(child: Container(color: Colors.grey,height: 1,width: 100,)),SizedBox(width: 10,),Text('Thông báo',textAlign: TextAlign.center,style: TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold,fontSize: 15),),SizedBox(width: 10,),Expanded(child: Container(color: Colors.grey,height: 1,width: 100,))],),
              Row(children: [
                Expanded(child: Text('Chưa đọc(10)')),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_horiz,color: Colors.grey,),
                )],),
              ListThongBao(thongbaos: thongbaos)
            ],
          ),
        ),
      ),
    );
  }
}
