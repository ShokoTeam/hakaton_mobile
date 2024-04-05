import 'package:flutter_bloc/flutter_bloc.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(const ProjectsState.initial());
}
