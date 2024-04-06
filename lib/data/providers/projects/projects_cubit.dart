import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/api_handler.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/core/logger.dart';
import 'package:hakaton_teamspace/data/api.dart';
import 'package:hakaton_teamspace/data/models/project.dart';

part 'projects_state.dart';

class ProjectsProvider extends Cubit<ProjectsState> with ApiHandler {
  ProjectsProvider() : super(ProjectsInitial());

  void loadProjects(BuildContext context) async {
    emit(ProjectsLoading());

    final response = await handleApiRequest(context, Api.dio.get(Routes.projectsAll));
    if (response == null) return safeEmit(ProjectsInitial());

    List<Project> projects = [];
    for (var json in response.data) {
      try {
        projects.add(Project.fromJson(json));
      } catch (e) {
        Logger.e(e);
      }
    }

    safeEmit(ProjectsLoaded(projects));
  }
}
