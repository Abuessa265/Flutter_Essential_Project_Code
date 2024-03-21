//materialApp/ | Scaffold | TExt | Center | Image | RichText

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        title: "This is practice code",
        home:  Home(),
     debugShowCheckedModeBanner: false,
    );
  }
  
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.9),

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home Screen',style: TextStyle(
          color: Colors.white
        ),),
        leading: Icon(Icons.home,color: Colors.white,),
        actions: [
          IconButton(onPressed: (){
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('Money has been transferred'),
            //     backgroundColor: Colors.green,
            //     duration: Duration(seconds: 1),
            // ),
            //
            // );
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text('Send mony'),
                content: Text('Are your sure that you want to send mony?'),

              );
            });
          }, icon: Icon(Icons.add)),
        ],

      ),

      body: Center(
        // child: Text("Hello world.We are starting a new application from today We are starting a new application from today We are starting a new application from today.",
        //   textAlign: TextAlign.center,
        //   maxLines: 1,
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 20,
        //     fontWeight: FontWeight.w600,
        //     backgroundColor: Colors.cyanAccent,
        //     overflow: TextOverflow.ellipsis,
        //
        // ),
        // ),
        //child: Icon(Icons.mobile_friendly,size: 84,color: Colors.green,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
        children:[
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfnrdswgOy9xacxx57eW3RSBvImdxC5bdGPw&usqp=CAU',
          width: 250,
          height: 200,
          fit: BoxFit.scaleDown,
        ),
          Text('This is new part'),
          Text('This is second part and its a main part'),
          Text('This is third part'),
          Text('This is fourth part'),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Gretting from '),
              Text('Ostad'),
              Text('-'),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.date_range),
                      Text('Date')
                    ],
                  ),
                  Text('21-03-2024'),
                  Text('last date'),
                  Text('Another date'),
                ],
              )

            ],
          )
       ],
        ),
       // child: Image.asset('images/abuessa.jpg',width: 250,height: 250,fit: BoxFit.scaleDown,),
      ),
    );
  }
  
}