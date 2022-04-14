import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekakhir/order_list.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, required this.orders}) : super(key: key);
  final Order orders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 42, 42, 42),
          title: Text(orders.nama),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 42, 42, 42),
                ),
                width: double.infinity,
                height: 850,
              ),
              Column(
                children: <Widget>[
                  Image.asset(
                    orders.image,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 21, 21, 21),
                      ),
                      width: double.infinity,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              orders.harga,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              "Quantity : ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          OrderQuantity(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38),
                    child: Stack(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 21, 21, 21),
                              fixedSize: Size(300, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              )),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Buy",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class OrderQuantity extends StatefulWidget {
  const OrderQuantity({Key? key}) : super(key: key);

  @override
  State<OrderQuantity> createState() => _OrderQuantityState();
}

class _OrderQuantityState extends State<OrderQuantity> {
  int totalItem = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              onPressed: () {
                setState(() {
                  totalItem--;
                });
              },
              icon: Icon(
                Icons.remove,
                color: Colors.white,
                size: 30,
              )),
          Text(
            totalItem.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  totalItem++;
                });
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
    );
  }
}
