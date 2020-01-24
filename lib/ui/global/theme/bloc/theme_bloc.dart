import 'dart:async';
import 'package:bloc/bloc.dart';
import '../app_themes.dart';
import './bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState => ThemeState(themeData: appThemeData[AppTheme.GreenLight]);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    // * Эвент это юзер тип "Изменение темы"?
    if (event is ThemeChanged) {
      // * Виджет отдаваемый в интерфейс
      yield ThemeState(themeData: appThemeData[event.theme]); // * event.theme - ключ для выборки данных
    }
  }
}
