import 'package:bloc_app/widget/widget_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/theme/theme_bloc.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeInitial>(
      builder: (context, themeState) {
        return MaterialApp(
          theme: ThemeData(
            brightness: themeState.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          home: Scaffold(
            appBar: AppBar(
              title: const Text("Counter App"),
              actions: [
                IconButton(
                  icon: const Icon(Icons.brightness_6),
                  onPressed: () {
                    context.read<ThemeBloc>().add(ToggleThemeEvent());
                  },
                )
              ],
            ),
            body: CounterWidget(),
          ),
        );
      },
    );
  }
}