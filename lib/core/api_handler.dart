import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hakaton_teamspace/core/utils.dart';

mixin ApiHandler {
  Future<Response<T>?> handleApiRequest<T>(
      BuildContext context, Future<Response<T>> request) async {
    try {
      return await request;
    } on DioException catch (e) {
      if (!context.mounted) return null;
      Utils.of(context).showError(
        '${e.error.toString()} ${e.message.toString()} ${e.response?.data.toString()}',
      );
    } on Exception catch (e) {
      if (!context.mounted) return null;
      Utils.of(context).showError('Exception: ${e.runtimeType}');
    } on Error catch (e) {
      if (!context.mounted) return null;
      Utils.of(context).showError('Error: ${e.runtimeType}');
    }
    return null;
  }
}
