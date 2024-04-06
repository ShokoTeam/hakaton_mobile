import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/data/models/task.dart';
import 'package:hakaton_teamspace/widgets/widgets.dart';

class TaskPage extends StatelessWidget {
  const TaskPage(this.task, this.project, {super.key});

  final Task task;
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Paddings.mini),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('T-${task.number} ${task.name}', style: TStyles.heading),
            const SizedBox(height: 16),
            Text(
              task.description ?? 'Описание отсутствует',
              style: TStyles.body.copyWith(color: const Color.fromRGBO(82, 82, 83, 1)),
            ),
            const SizedBox(height: 20),
            const UISpacer(),
            const SizedBox(height: 32),
            const Text('Детали', style: TStyles.header),
            const SizedBox(height: 16),
            _RowInfo('Проект', Text(project.name, style: TStyles.body)),
            const SizedBox(height: 12),
            _RowInfo(
              'Заказчик',
              Row(
                children: [
                  const CircleAvatar(radius: 12, backgroundColor: UIColors.brand),
                  const SizedBox(width: 12),
                  Text(project.consumerUid ?? 'Нет заказчика', style: TStyles.body),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _RowInfo('Статус', Text(task.state.asState(), style: TStyles.body)),
            const SizedBox(height: 12),
            _RowInfo(
              'Приоритет',
              task.importance == null
                  ? Text(task.importance.asPriority(), style: TStyles.body)
                  : UIChip.priority(task.importance),
            ),
            const SizedBox(height: 12),
            _RowInfo(
              'Этап',
              task.step == null
                  ? Text(task.importance.asStep(), style: TStyles.body)
                  : UIChip.step(task.step),
            ),
            const SizedBox(height: 12),
            _RowInfo('Тип', UIChip.category(task.category)),
            const SizedBox(height: 12),
            _RowInfo(
              'Ответственный',
              Row(
                children: [
                  const CircleAvatar(radius: 12, backgroundColor: UIColors.brand),
                  const SizedBox(width: 12),
                  Text(task.executerUid ?? 'Нет исполнителя', style: TStyles.body),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _RowInfo('SP', Text(task.storyPointsUid ?? 'Нет оценки', style: TStyles.body)),
            const SizedBox(height: 16),
            const UISpacer(),
          ],
        ),
      ),
    );
  }
}

class _RowInfo extends StatelessWidget {
  const _RowInfo(this.label, this.value);

  final String label;
  final Widget value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 120,
          child: Text(
            '$label:',
            style: TStyles.body.copyWith(color: const Color.fromRGBO(82, 82, 83, 1)),
          ),
        ),
        const SizedBox(width: 32),
        value,
      ],
    );
  }
}
