import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/modules/board/board_page.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(this.project, {super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(BoardPage(project)),
      child: DottedBorder(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${project.name} - ${project.uid}'),
            Text('ConsumerUID: ${project.consumerUid}'),
            Text('InspectorUID: ${project.inspectorUid}'),
            Text('TeamUID: ${project.teamUid}'),
          ],
        ),
      ),
    );
  }
}
