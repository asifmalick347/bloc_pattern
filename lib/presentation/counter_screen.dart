
import 'package:bloc_by_at/bloc/counter/counter_bloc.dart';
import 'package:bloc_by_at/bloc/counter/counter_event.dart';
import 'package:bloc_by_at/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state){
              return Text(state.counter.toString(), style: TextStyle(fontSize: 36),);
            }),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  context.read<CounterBloc>().add(DecrementCounter());
                }, child: Text("Decrement"),),
                ElevatedButton(onPressed: (){
                  context.read<CounterBloc>().add(IncrementCounter());
                }, child: Text("Increment"),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
