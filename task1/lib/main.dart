import 'package:flutter/material.dart';
import 'package:task1/data/data_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home:  MyHomePage(title: '',)
    );
  }
}
class User {
  final String title;
  final String data;
  final String HR_AVG;
  final String sp_AVG;
  final String sprint;
  final String dis;
  User(
      this.title,
      this.data,
      this.HR_AVG,
      this.sp_AVG,
      this.sprint,
      this.dis,
      );
}
List user=[
  User( 'پویان پرورش',   '1403/1/10',   '50', '5', '8' ,  '10'),
  User( 'پویان پرورش',   '1403/1/8',   '50', '5', '8' ,  '10'),
  User( 'پویان پرورش',   '1403/1/7',   '50', '5', '8' ,  '10'),
  User( 'پویان پرورش',   '1403/1/3',   '50', '5', '8' ,  '10'),
  User( 'پویان پرورش',   '1403/1/2',   '50', '5', '8' ,  '10'),

];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('                                     : انتخاب بازیکن ',style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
      body: ListView.builder(
        itemCount: user.length,
        itemBuilder: (BuildContext context, int index) {
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomListItemTwo(
                thumbnail:Container(
                    decoration:  const BoxDecoration(color:  Color.fromRGBO(6, 10, 25, 1.0),borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16)
                    ),
                    ),
                    child:
                    const Column(
                      children: [
                        Text('', style: TextStyle(color: Colors.white,fontSize: 12.0),),
                        Text('', style: TextStyle(color: Colors.white,fontSize: 12.0),),
                        Icon(Icons.get_app_sharp,color: Colors.white,),
                        Text('ذخیره کردن', style: TextStyle(color: Colors.white,fontSize: 12.0),)
                      ],
                    )
                ),
                title:user[index].title,
                data:user[index].data,
                HR_AVG:user[index].HR_AVG,
                sp_AVG:user[index]. sp_AVG ,
                sprint:user[index].sprint,
                dis :user[index].dis
            ),
          );
        },
      ),
    );// This trailing comma makes auto-formatting nicer for build methods.
  }

}

