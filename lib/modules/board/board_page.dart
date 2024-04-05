import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants/paddings.dart';
import 'package:hakaton_teamspace/data/providers/board/board_cubit.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/modules/board/task_card.dart';
import 'package:hakaton_teamspace/widgets/scaffold.dart';

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
    context.read<BoardProvider>().loadTasks(widget.project.uid);
  }

  @override
  Widget build(BuildContext context) {
    return UIScaffold(
      appBar: AppBar(title: const Text('Board Page')),
      body: BlocBuilder<BoardProvider, BoardState>(
        builder: (context, state) {
          if (state is BoardLoaded) {
            final tasks = state.tasks;
            return ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: tasks.length,
              itemBuilder: (_, idx) => TaskCard(tasks[idx]),
              separatorBuilder: (_, __) => const SizedBox(height: Paddings.based),
            );
          }
          if (state is BoardLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const SizedBox();
        },
      ),
    );
  }
}
