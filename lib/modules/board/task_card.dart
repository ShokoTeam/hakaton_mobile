import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/data/models/task.dart';
import 'package:hakaton_teamspace/widgets/container.dart';

class TaskCard extends StatelessWidget {
  const TaskCard(this.task, {super.key});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(context: context, builder: (context) => _TaskMBS(task)),
      child: UIContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${task.name} - ${task.number}'),
            Text(task.description ?? '-'),
            Text('Difficulty: ${task.category}'),
            Text('SP: ${task.storyPointsUid}'),
            Text('Deadline: ${task.endDate}'),
          ],
        ),
      ),
    );
  }
}

class _TaskMBS extends StatelessWidget {
  const _TaskMBS(this.task);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return UIContainer(
      width: double.infinity,
      child: Column(
        children: [
          Text(task.name, style: const TextStyle(fontSize: 30)),
          const SizedBox(height: 40),
          Text(task.description ?? '-'),
          const SizedBox(height: 10),
          Text('Difficulty: ${task.category}'),
          const SizedBox(height: 10),
          Text('SP: ${task.storyPointsUid}'),
          const SizedBox(height: 10),
          Text('Deadline: ${task.endDate}'),
          const SizedBox(height: 10),
          Text('Created At: ${task.createdAt}'),
        ],
      ),
    );
  }
}
