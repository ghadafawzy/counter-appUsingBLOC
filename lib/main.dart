import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/ counter/counter_bloc.dart';
import 'blocs/theme/theme_bloc.dart';
import 'views/home_page.dart';


void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => CounterBloc()),
      BlocProvider(create: (context) => ThemeBloc()),
    ],
    child: HomeScreen(),
  ));
}