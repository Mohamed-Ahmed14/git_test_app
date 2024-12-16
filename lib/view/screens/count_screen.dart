import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/view_model/cubit/cubit.dart';
import 'package:test_app/view_model/cubit/state.dart';

class CountScreen extends StatelessWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit,CounterState>
              (builder: (context, state) {
              var cubit = CounterCubit.get(context);
              return Text('Count : ${cubit.count}');
            },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        CounterCubit.get(context).increment();
      },
        child: Icon(Icons.add),),
    );
  }
}
