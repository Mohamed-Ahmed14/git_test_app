import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/view_model/cubit/state.dart';

class CounterCubit extends Cubit<CounterState>{

  CounterCubit() : super(InitState());
  static CounterCubit get(BuildContext context) =>BlocProvider.of<CounterCubit>(context);

  int count = 0;
  void increment(){
    count++;
    emit(CounterIncrement());
  }

}