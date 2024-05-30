import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indonesia_satu_tujuh/src/home/presentation/cubit/count_cubit.dart';
import 'src/home/presentation/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     
     providers: [
       BlocProvider(create: (c)=>CountCubit())
     ],
      child: MaterialApp(
         home: Home(),
      ),
    );
  }
}

