import 'package:bloc_themeswitch_resocoder_3/ui/global/theme/app_themes.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  ThemeEvent([List props = const <dynamic>[]]) : super(props);
}

// * Событие интерфейса - "Изменение темы" в виде юзер типа
class ThemeChanged extends ThemeEvent {
  // * Юзер тип данных, передаваемый эвентом, он же ключ для выборки реальных данных
  final AppTheme theme;

  ThemeChanged({@required this.theme}) : super([theme]);
}