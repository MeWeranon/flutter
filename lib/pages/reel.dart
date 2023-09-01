import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> { 
  
  @override
  Widget build(BuildContext context) { 
    return  Scaffold(
          appBar: AppBar(
            title: Text("Reels"),
            backgroundColor: Colors.redAccent,
          ),
          body: ListView( 
            children: [
                   
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(child: Image.network("https://scontent.fbkk5-7.fna.fbcdn.net/v/t39.30808-6/308117710_645082556980062_1175469292556697188_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=Wv7ehFYR6msAX_-Kpsv&_nc_ht=scontent.fbkk5-7.fna&oh=00_AfAcMUJ4EY6cI4WeYKjo-kfVI_o50KCuwRazp7XFxyRL1A&oe=64F68250")),
                      
                    ),

                    Container( 
                       color: Color.fromARGB(255, 20, 20, 20),
                       height: 900,
                      child: Center(child: Image.network("https://digitalpress.fra1.cdn.digitaloceanspaces.com/b7uv0cn/2022/12/sp.jpg")),

                    ),

                    Container( 
                       color: const Color.fromARGB(255, 10, 10, 10),
                       height: 900,
                       child: Center(child: Image.network("https://pbs.twimg.com/media/FnpiSOwaQAECgDS?format=jpg&name=large")),

                    ),

                    Container( 
                       color: Color.fromARGB(255, 214, 212, 212),
                       height: 900,
                       child: Center(child: Image.network("https://gumlet.assettype.com/ejan%2F2022-11%2Ffb97ef43-4a42-443a-a6c0-9507f8d5a280%2F__INS____________________.jpg?w=1200&auto=format%2Ccompress&ogImage=true&enlarge=true")),

                    ),

                    Container( 
                       color: const Color.fromARGB(255, 13, 13, 13),
                       height: 900,
                    ),

                    Container( 
                       color: Color.fromARGB(255, 250, 247, 247),
                       height: 900,
                    )
                    
                ],
          )
       );
  }
}