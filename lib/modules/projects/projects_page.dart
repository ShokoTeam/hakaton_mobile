import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/data/providers/projects/projects_cubit.dart';
import 'package:hakaton_teamspace/modules/projects/card.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProjectsProvider>().loadProjects(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      appBar: AppBar(title: const Text('Проекты')),
      body: BlocBuilder<ProjectsProvider, ProjectsState>(
        builder: (context, state) {
          if (state is ProjectsLoaded) {
            final projects = state.projects;
            return GridView.builder(
              padding: const EdgeInsets.all(Paddings.mini),
              itemCount: projects.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: Paddings.mini,
                mainAxisSpacing: Paddings.mini,
              ),
              itemBuilder: (_, idx) => ProjectCard(projects[idx]),
            );
          }
          if (state is ProjectsLoading) {
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
