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
