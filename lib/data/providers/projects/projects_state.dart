part of 'projects_cubit.dart';

sealed class ProjectsState {}

final class ProjectsInitial extends ProjectsState {}

final class ProjectsLoading extends ProjectsState {}

final class ProjectsLoaded extends ProjectsState {
  final List<Project> projects;
  ProjectsLoaded(this.projects);
}
