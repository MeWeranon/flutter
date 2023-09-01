import 'package:flutter/material.dart';

class CustomUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your status'),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 240, 93, 14),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Welcome back,',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'WERANON THONGMAK',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Total Income',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green
                      ),
                    ),
                    Text(
                      '\$12,345',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Total Expenses',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      '\$6,789',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.attach_money),
                    title: Text('Income'),
                    trailing: Text('\$5,678'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.money_off),
                    title: Text('Expenses'),
                    trailing: Text('\$2,345'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Savings'),
                    trailing: Text('\$3,200'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
