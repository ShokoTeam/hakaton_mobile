import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/api_handler.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/extensions.dart';
import 'package:hakaton_teamspace/core/logger.dart';
import 'package:hakaton_teamspace/data/api.dart';
import 'package:hakaton_teamspace/data/models/project.dart';
import 'package:hakaton_teamspace/data/models/task.dart';

part 'board_state.dart';

class BoardProvider extends Cubit<BoardState> with ApiHandler {
  BoardProvider() : super(BoardInitial());

  void loadTasks(BuildContext context, String projectUid) async {
    emit(BoardLoading());

    final response = await handleApiRequest(
      context,
      Api.dio.get(Routes.projectSingle, queryParameters: {'uid': projectUid}),
    );
    if (response == null) return safeEmit(BoardInitial());

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
