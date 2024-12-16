import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/view/screens/home_screen.dart';
import 'package:test_app/view/screens/tap_bar_screen.dart';
import 'package:test_app/view_model/cubit/cubit.dart';
import 'package:test_app/view_model/cubit/observing_cubit.dart';

void main() {
  //welcome from intellij
  Bloc.observer = MyBlocObserver();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => CounterCubit(),),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home : TapBarScreen()
      // home: Scaffold(
      //   appBar: AppBar(
      //     elevation: 0,
      //     backgroundColor: Colors.amber,
      //     leading: Icon(
      //       Icons.person_pin,
      //       color: Colors.red,
      //       size: 24,
      //     ),
      //     leadingWidth: 70,
      //     title: Text("Mohamed Ahmed"),
      //     centerTitle: false,
      //     actions: [
      //       Icon(
      //         Icons.notifications_active_rounded,
      //         color: Colors.red,
      //         size: 24,
      //       ),
      //       SizedBox(width: 2,),
      //       Icon(
      //         Icons.favorite_rounded,
      //         color: Colors.red,
      //         size: 24,
      //       ),
      //       SizedBox(width: 2,),
      //       Icon(
      //         Icons.more_vert_outlined,
      //         color: Colors.red,
      //         size: 24,
      //       ),
      //       SizedBox(width: 2,),
      //     ],
      //   ),
      //   body: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       IconButton(onPressed: (){
      //         print("Hello");
      //       },
      //         icon:Icon(Icons.home,color: Colors.blue,)),
      //       Icon(Icons.home,color: Colors.blue,),
      //       Icon(Icons.home,color: Colors.blue,),
      //       Icon(Icons.home,color: Colors.blue,),
      //       Icon(Icons.home,color: Colors.blue,),
      //       Icon(Icons.home,color: Colors.blue,),
      //       Row(
      //         //mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.alarm,color: Colors.blue,),
      //           SizedBox(width: 5,),
      //           Icon(Icons.alarm,color: Colors.blue,),
      //           SizedBox(width: 5,),
      //           Icon(Icons.alarm,color: Colors.blue,),
      //           SizedBox(width: 5,),
      //           Icon(Icons.alarm,color: Colors.blue,),
      //         ],
      //       ),
      //     ],
      //   )
      // ),
    ),
  ));
}
