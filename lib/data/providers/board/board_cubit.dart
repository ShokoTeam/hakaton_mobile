import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants/routes.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/core/logger.dart';
import 'package:hakaton_teamspace/data/api.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/data/models/task.dart';

part 'board_state.dart';

class BoardProvider extends Cubit<BoardState> {
  BoardProvider() : super(BoardInitial());

  void loadTasks(String projectUid) async {
    emit(BoardLoading());

    final response = await Api.dio.get(Routes.projectSingle, queryParameters: {'uid': projectUid});
    final project = Project.fromJson(response.data);
    List<Task> tasks = [];
    for (var json in response.data['tasks']) {
      try {
        tasks.add(Task.fromJson(json));
      } catch (e) {
        Logger.e(e);
      }
    }

    safeEmit(BoardLoaded(project, tasks));
  }
}
