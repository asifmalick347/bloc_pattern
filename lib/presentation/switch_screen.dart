
import 'package:flutter/material.dart';
import 'package:bloc_by_at/bloc/switch/switch_state.dart';
import 'package:bloc_by_at/bloc/switch/switch_bloc.dart';
import 'package:bloc_by_at/bloc/switch/switch_event.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Example"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications"),
                  BlocBuilder<SwitchBloc, SwitchState>(builder: (context, state){
                    return Switch(value: state.isSwitchOn, onChanged: (newValue){
                      context.read<SwitchBloc>().add(ToggleSwitch());
                    });
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
