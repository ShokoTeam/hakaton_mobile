import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/data/models/task.dart';

part 'sort_state.dart';

enum Sorting {
  off('По-умолчанию'),
  importantFirst('Сначала важные'),
  errorsFirst('Сначала ошибки'),

  newFirst('Сначала новые'),
  oldFirst('Сначала старые');

  const Sorting(this.label);
  final String label;
}

class SortingController extends Cubit<SortingState> {
  SortingController(this.items) : super(SortingState(items, Sorting.off));

  List<Task> items;

  void setFilter(Sorting filter) {
    switch (filter) {
      case Sorting.off:
        return emit(SortingState(items, filter));
      case Sorting.newFirst:
        final sorted = [...items]..sort(
            (a, b) => a.createdAt.compareTo(b.createdAt),
          );
        return emit(SortingState(sorted, filter));
      case Sorting.oldFirst:
        final sorted = [...items]..sort(
            (b, a) => a.createdAt.compareTo(b.createdAt),
          );
        return emit(SortingState(sorted, filter));
      case Sorting.errorsFirst:
        final sorted = [...items]..sort(
            (b, a) => (a.category == 'hotfix' ? 1 : 0).compareTo((b.category == 'hotfix' ? 1 : 0)),
          );
        return emit(SortingState(sorted, filter));
      case Sorting.importantFirst:
        final sorted = [...items]..sort(
            (b, a) => (a.importance == 'high' ? 1 : 0).compareTo(b.importance == 'high' ? 1 : 0),
          );
        return emit(SortingState(sorted, filter));
    }
  }
}
