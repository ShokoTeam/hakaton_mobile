import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/data/controllers/sort/sort_cubit.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/data/providers/projects/projects_cubit.dart';
import 'package:hakaton_teamspace/modules/projects/card.dart';
import 'package:hakaton_teamspace/widgets/sorting_button.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      appBar: AppBar(title: const Text('Проекты')),
      body: BlocBuilder<ProjectsProvider, ProjectsState>(
        builder: (context, state) {
          if (state is ProjectsLoaded) {
            return _ProjectsView(state.projects);
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

class _ProjectsView extends StatelessWidget {
  const _ProjectsView(this.projects);

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SortingController(projects),
      child: BlocBuilder<SortingController, SortingState>(builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async => await context.read<ProjectsProvider>().loadProjects(context),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: Paddings.mini),
                child: SortingButton(),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(Paddings.mini),
                  itemCount: state.items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: Paddings.mini,
                    mainAxisSpacing: Paddings.mini,
                  ),
                  itemBuilder: (_, idx) => ProjectCard(state.items[idx]),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
