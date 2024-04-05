import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    context.read<ProjectsProvider>().loadProjects();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Projects Page')),
      body: BlocBuilder<ProjectsProvider, ProjectsState>(
        builder: (context, state) {
          if (state is ProjectsLoaded) {
            final projects = state.projects;
            return ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: projects.length,
              itemBuilder: (_, idx) => ProjectCard(projects[idx]),
              separatorBuilder: (_, __) => const SizedBox(height: 10),
            );
          }
          if (state is ProjectsLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const SizedBox();
        },
      ),
    );
  }
}
