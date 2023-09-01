import 'package:flutter/material.dart';
import 'package:widgets_basic/constant/my_constant.dart';
import 'Bottomnavbar_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 194, 48),
        title: Text('Flutter First My App.',
          style: MyConstant().h1stlye(),
        ),
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 248, 246, 246),
          size: 24,
        ),
        actions: const [
          Icon(Icons.search, color: Color.fromARGB(255, 243, 243, 243), size: 24),
          SizedBox(width: 10,),
          Icon(Icons.add, color: Color.fromARGB(255, 243, 243, 243), size: 24),
          SizedBox(width: 10,),
          Icon(Icons.person, color: Color.fromARGB(255, 243, 243, 243), size: 24),
          SizedBox(width: 20,),
        ],
      ),
      body: const Center(
        child: Text(
          'HOME SCREEN',
          style: TextStyle(
            color:  Colors.black,
            fontSize : 40,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
      