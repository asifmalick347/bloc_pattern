import 'package:bloc_by_at/bloc/counter/counter_bloc.dart';
import 'package:bloc_by_at/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_by_at/bloc/loading/loading_bloc.dart';
import 'package:bloc_by_at/presentation/counter_screen.dart';
import 'package:bloc_by_at/presentation/loading_screen.dart';
import 'package:bloc_by_at/presentation/switch_screen.dart';
import 'package:bloc_by_at/bloc/switch/switch_bloc.dart';
import 'package:bloc_by_at/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/image_picker_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoadingBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => ImagePickerBloc(ImagePickerUtils()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue,
              titleTextStyle: TextStyle(color: Colors.white),
            )),
        home: const ImagePickerScreen(),
      ),
    );
  }
}
