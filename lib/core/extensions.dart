import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocExtension<T> on BlocBase<T> {
  void safeEmit(T state) {
    if (!isClosed) {
      // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
      emit(state);
    }
  }
}

extension ContextExtensions on BuildContext {
  Future<T?> push<T extends Object>(Widget widget) async =>
      await Navigator.of(this).push(MaterialPageRoute(
        builder: (_) => widget,
      ));

  Future<T?> pushReplacement<T extends Object>(Widget widget) async =>
      await Navigator.of(this).pushReplacement(MaterialPageRoute(
        builder: (_) => widget,
      ));

  void pop<T extends Object>(Widget widget) => Navigator.pop(this);
}

extension DateTimeExt on DateTime {
  String toStringShort() =>
      '${day.toString().padLeft(2, '0')}.${month.toString().padLeft(2, '0')}.${year.toString().padLeft(2, '0')}';
}

extension StringParseExt on String? {
  String asState() => switch (this) {
        'queue' => 'В очереди',
        'progress' => 'В работе',
        'finally' => 'Выполнена',
        _ => 'Статуса нет',
      };

  String asPriority() => switch (this) {
        'low' => 'Низкий',
        'middle' => 'Средний',
        'high' => 'Высокий',
        _ => 'Приоритета нет',
      };

  String asCategory() => switch (this) {
        'hotfix' => 'Ошибка',
        'changes' => 'Доработка',
        'new' => 'Новая фича',
        _ => 'Категории нет',
      };

  String asStep() => switch (this) {
        'Analys' => 'Аналитика',
        'Coding' => 'Разработка',
        'Testing' => 'Тестирование',
        'Acceptance' => 'Приемка',
        'Release' => 'Релиз',
        _ => 'Этапа нет',
      };
}
