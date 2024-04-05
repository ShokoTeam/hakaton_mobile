part of 'board_cubit.dart';

sealed class BoardState {}

final class BoardInitial extends BoardState {}

final class BoardLoading extends BoardState {}

final class BoardLoaded extends BoardState {
  final Project project;
  final List<Task> tasks;
  BoardLoaded(this.project, this.tasks);
}
