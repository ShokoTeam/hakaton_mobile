import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/data/controllers/sort/sort_cubit.dart';

class SortingButton extends StatelessWidget {
  const SortingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SortingController>();
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        backgroundColor: UIColors.main,
        builder: (c) => _SortMBS(controller),
      ),
      child: Row(
        children: [
          const Icon(Icons.filter_list, color: UIColors.brand),
          const SizedBox(width: 4),
          Text(controller.state.filter.label, style: TStyles.body),
        ],
      ),
    );
  }
}

class _SortMBS extends StatefulWidget {
  const _SortMBS(this.controller);

  final SortingController controller;

  @override
  State<_SortMBS> createState() => _SortMBSState();
}

class _SortMBSState extends State<_SortMBS> {
  late Sorting filter = widget.controller.state.filter;

  void _setFilter(Sorting? newFilter) {
    if (newFilter == null) return;
    widget.controller.setFilter(newFilter);
    setState(() => filter = newFilter);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Paddings.based),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Сортировка', style: TStyles.header),
          const SizedBox(height: 8),
          _btn(Sorting.errorsFirst),
          // _btn(Sorting.importantFirst),
          _btn(Sorting.newFirst),
          _btn(Sorting.oldFirst),
          _btn(Sorting.off),
        ],
      ),
    );
  }

  Row _btn(Sorting btnFilter) {
    return Row(
      children: [
        Text(btnFilter.label, style: TStyles.title.copyWith(fontWeight: FontWeight.normal)),
        const Spacer(),
        Radio(
          value: btnFilter,
          groupValue: filter,
          onChanged: (f) => _setFilter(f),
          activeColor: UIColors.brand,
        ),
      ],
    );
  }
}
