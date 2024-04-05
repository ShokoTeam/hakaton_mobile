import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/data/models/task.dart';
import 'package:hakaton_teamspace/modules/board/task_page.dart';
import 'package:hakaton_teamspace/widgets/chip.dart';
import 'package:hakaton_teamspace/widgets/container.dart';

class TaskCard extends StatelessWidget {
  const TaskCard(this.task, this.project, {super.key});

  final Task task;
  final Project project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => showModalBottomSheet(context: context, builder: (context) => _TaskMBS(task)),
      onTap: () => context.push(TaskPage(task, project)),
      child: UIContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(project.name),
                      const SizedBox(height: 8),
                      Text(task.name, style: TStyles.brandTitle),
                      Text('До ${task.endDate?.toStringShort()}'),
                    ],
                  ),
                ),
                const CircleAvatar(radius: 18, backgroundColor: UIColors.background),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                const CircleAvatar(radius: 12, backgroundColor: UIColors.background),
                const SizedBox(width: 8),
                Text(project.consumerUid ?? 'Нет заказчика'),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                Text(task.state.asState()),
                if (task.importance != null) UIChip.priority(task.importance),
                if (task.step != null) UIChip.step(task.step),
                UIChip.category(task.category),
                Text(task.storyPointsUid ?? 'SP'),
              ],
            ),
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
