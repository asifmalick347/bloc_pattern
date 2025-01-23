

import 'package:bloc_by_at/bloc/loading/loading_bloc.dart';
import 'package:bloc_by_at/bloc/loading/loading_event.dart';
import 'package:bloc_by_at/bloc/loading/loading_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Example"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<LoadingBloc, LoadingState>(builder: (context, state){
              if(state.showLoading){
                return Center(
                  child: CupertinoActivityIndicator(color: Colors.green, radius: 40,),
                );
              }else{
                return const SizedBox();
              }
            }),

            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              context.read<LoadingBloc>().add(StartLoading());
            }, child: Text("Start Loading")),
            ElevatedButton(onPressed: (){
              context.read<LoadingBloc>().add(StopLoading());
            }, child: Text("Stop Loading")),
          ],
        ),
      ),
    );
  }
}
