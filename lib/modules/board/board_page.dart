import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/data/controllers/sort/sort_cubit.dart';
import 'package:hakaton_teamspace/data/models/task.dart';
import 'package:hakaton_teamspace/data/providers/board/board_cubit.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/modules/board/task_card.dart';
import 'package:hakaton_teamspace/widgets/sorting_button.dart';

class BoardPage extends StatefulWidget {
  const BoardPage(this.project, {super.key});

  final Project project;

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  void initState() {
    super.initState();
    context.read<BoardProvider>().loadTasks(context, widget.project.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      appBar: AppBar(title: Text(widget.project.name)),
      body: BlocBuilder<BoardProvider, BoardState>(
        builder: (context, state) {
          if (state is BoardLoaded) {
            return _TasksView(state.tasks, widget.project);
          }
          if (state is BoardLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const SizedBox();
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: UIColors.main,
        onPressed: () {},
        child: const Icon(Icons.add, color: UIColors.brand),
      ),
    );
  }
}

class _TasksView extends StatelessWidget {
  const _TasksView(this.tasks, this.project);

  final List<Task> tasks;
  final Project project;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SortingController(tasks),
      child: BlocBuilder<SortingController, SortingState>(builder: (context, state) {
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: Paddings.mini),
              child: SortingButton(),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(20),
                itemCount: tasks.length,
                itemBuilder: (_, idx) => TaskCard(state.items[idx], project),
                separatorBuilder: (_, __) => const SizedBox(height: Paddings.based),
              ),
            ),
          ],
        );
      }),
    );
  }
}
