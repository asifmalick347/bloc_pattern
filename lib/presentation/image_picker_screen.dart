import 'dart:developer';
import 'dart:io';

import 'package:bloc_by_at/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_by_at/bloc/image_picker/image_picker_events.dart';
import 'package:bloc_by_at/bloc/image_picker/image_picker_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<ImagePickerBloc, ImagePickerStates>(
              builder: (context, state) {
            if (state.xFile == null) {
              return Center(
                child: GestureDetector(
                  onTap: () {
                    log("Tapped!");
                    context.read<ImagePickerBloc>().add(PickCameraImage());
                  },
                  child: Icon(
                    Icons.camera,
                    size: 32,
                  ),
                ),
              );
            } else {
              return Container(
                width: 400,
                height: 300,
                child: Image.file(File(state.xFile!.path)),
              );
            }
          })
        ],
      ),
    );
  }
}
