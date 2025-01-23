part of 'theme_bloc.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {
  bool isDarkTheme;
  ThemeInitial({required this.isDarkTheme});
}
