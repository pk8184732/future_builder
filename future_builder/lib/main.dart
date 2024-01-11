import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  Future<List<String>> userList() async {
    var students = ["Puja","Jyoti","Rani","Madhu","Muskan"];
    return Future.delayed(Duration(seconds: 2), () =>students);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text("Future Builder")),backgroundColor: Colors.blueGrey),backgroundColor: Colors.grey,
      body: Center(
        child: Container(padding: EdgeInsets.all(40),
          child: FutureBuilder(
            builder: (context, snapshot) {
              if(snapshot.hasData){
                var data = snapshot.data;
                return ListView.builder(
                  itemCount:data?.length,
                  itemBuilder: (context ,index){
                    var studentName = data?[index];
                    return Column(
                      children: [
                        Container(
                          child: Center(child: Text("$studentName",style: TextStyle(fontSize: 30,color: Colors.white,),)),
                          height: 100,
                          width: 800,
                          color: Colors.blueGrey,
                        ),

                        SizedBox(
                          height: 2,
                        )
                      ],
                    );
                  },);
              }
              else{
                return Center(child: CircularProgressIndicator(),);
              }
            },
            future: userList(),
          ),
        ),
      ),
    );
  }
}


// void main(){
//   runApp(myapp());
// }
// class myapp extends StatelessWidget {
//   const myapp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => HomePageState();
// }
//
// class HomePageState extends State<HomePage> {
//   Future<String> evenOrOdd() async {
//     var data = "";
//     var a = 10;
//     var check = 0;
//     for(var i = 1; i<=a; i++) {
//       if (i % a == 0) {
//         check++;
//       }
//     }
//     if(check <=2) {
//       data = "prime";
//     }
//     else{
//       data = "not prime";
//     }
//
//     return Future.delayed(Duration(seconds: 2), () =>data);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Center(child: Text("PRIME",style: TextStyle(color: Colors.white,fontSize: 30),)),backgroundColor: Colors.purpleAccent),backgroundColor: Colors.cyanAccent,
//       body: Center(
//         child: Container(color: Colors.yellow,height: 400,width: 400,
//           child: FutureBuilder(
//             builder: (context, snapshot) {
//               if(snapshot.hasData){
//                 var data = snapshot.data;
//                 return Center(child: Text("$data",style: TextStyle(fontSize: 30,color: Colors.purpleAccent),));
//               }
//               else{
//                 return Center(child: CircularProgressIndicator(color: Colors.cyanAccent),);
//               }
//             },
//             future: evenOrOdd(),
//           ),
//         ),
//       ),
//     );
//   }
// }




// void main(){
//   runApp(myapp());
// }
// class myapp extends StatelessWidget {
//   const myapp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => HomePageState();
// }
//
// class HomePageState extends State<HomePage> {
//   Future<String> evenOrOdd() async {
//     var data = "";
//     var a = 10;
//     var b = 20;
//     var c = a+b;
//     if(c%2 ==0){
//       data = "even";
//     }
//     else{
//       data = "odd";
//     }
//     return Future.delayed(Duration(seconds: 2), () =>data);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Center(child: Text("EVEN",style:TextStyle(color: Colors.lightGreenAccent,fontSize: 30) ,)),backgroundColor: Colors.cyan),backgroundColor: Colors.lime,
//       body: Center(
//         child: Container(width: 400,height: 400,color: Colors.lightBlueAccent,
//           child: FutureBuilder(
//             builder: (context, snapshot) {
//               if(snapshot.hasData){
//                 var data = snapshot.data;
//                 return Center(child: Text("$data",style: TextStyle(fontSize: 30,color: Colors.lime),));
//               }
//               else{
//                 return Center(child: CircularProgressIndicator(),);
//               }
//             },
//             future: evenOrOdd(),
//           ),
//         ),
//       ),
//     );
//   }
// }
