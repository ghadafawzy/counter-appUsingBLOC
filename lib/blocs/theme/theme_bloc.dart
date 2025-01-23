import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeInitial> {
  ThemeBloc() : super(ThemeInitial(isDarkTheme: false)) {
    on<ToggleThemeEvent>((event, emit) {
     emit(ThemeInitial(isDarkTheme: !state.isDarkTheme));
    });
  }
}
