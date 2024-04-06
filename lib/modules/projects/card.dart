import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/modules/board/board_page.dart';
import 'package:hakaton_teamspace/widgets/widgets.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(this.project, {super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(BoardPage(project)),
      child: UIContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(project.name, maxLines: 2, style: TStyles.brandTitle),
            const Spacer(),
            const CircleAvatar(radius: 18, backgroundColor: UIColors.background),
            const SizedBox(height: 4),
            Text('${project.tasksCount} задач', maxLines: 2, style: TStyles.body),
            const SizedBox(height: 4),
            Text(project.team.name, maxLines: 2, style: TStyles.body),
          ],
        ),
      ),
    );
  }
}
