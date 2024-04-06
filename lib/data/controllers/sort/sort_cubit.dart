import 'package:flutter_bloc/flutter_bloc.dart';

part 'sort_state.dart';

enum Sorting {
  off('По-умолчанию'),
  newFirst('Сначала новые'),
  oldFirst('Сначала старые');

  const Sorting(this.label);
  final String label;
}

class SortingController extends Cubit<SortingState> {
  SortingController(this.items) : super(SortingState(items, Sorting.off));

  List<dynamic> items;

  void setFilter(Sorting filter) {
    switch (filter) {
      case Sorting.off:
        return emit(SortingState(items, filter));
      case Sorting.newFirst:
        final sorted = [...items]..sort(
            (a, b) => DateTime.parse(a.createdAt).compareTo(DateTime.parse(b.createdAt)),
          );
        return emit(SortingState(sorted, filter));
      case Sorting.oldFirst:
        final sorted = [...items]..sort(
            (b, a) => DateTime.parse(a.createdAt).compareTo(DateTime.parse(b.createdAt)),
          );
        return emit(SortingState(sorted, filter));
    }
  }
}
