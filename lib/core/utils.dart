import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/core/constants.dart';

/// For calling Snackbars
/// Use: context.utils.showSnackbar();
final class Utils {
  Utils._(this.context);

  final BuildContext context;

  static Utils of(BuildContext context) => Utils._(context);

  void _showSnackbar(SnackBar snackBar) => ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(snackBar);

  void showMessage(String message, {Function()? onTap}) => _showSnackbar(_CustomSnackBar(
        context,
        message: message,
        iconData: Icons.info_outline,
        backgroundColor: Colors.grey.shade300,
        borderColor: Colors.grey,
        onTap: onTap,
      ));

  void showSuccess(String message, {Function()? onTap}) => _showSnackbar(_CustomSnackBar(
        context,
        message: message,
        iconData: Icons.info_outline,
        backgroundColor: Colors.green,
        borderColor: Colors.green.shade300,
        onTap: onTap,
      ));

  void showUnimplemented() => showMessage('Эта функция еще находится в разработке');

  void showError(String error, {Function()? onTap}) => _showSnackbar(_CustomSnackBar(
        context,
        message: error,
        iconData: Icons.info_outline,
        backgroundColor: Colors.red.shade300,
        borderColor: Colors.red,
        onTap: onTap,
      ));

  void showDebugMessage(String message) {
    if (!kDebugMode) return;
    _showSnackbar(_CustomSnackBar(
      context,
      message: message,
      iconData: Icons.info_outline,
      backgroundColor: Colors.orange.shade300,
      borderColor: Colors.orange,
      // backgroundColor: context.colors.background.warning,
      // borderColor: context.colors.content.warning,
    ));
  }
}

class _CustomSnackBar extends SnackBar {
  _CustomSnackBar(
    BuildContext context, {
    required String message,
    required IconData iconData,
    required Color borderColor,
    required Color backgroundColor,
    Function()? onTap,
  }) : super(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          elevation: 0,
          duration: const Duration(milliseconds: 4000),
          content: GestureDetector(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(width: 0.3, color: borderColor),
                borderRadius: BorderRadius.circular(16),
                color: backgroundColor,
              ),
              child: Row(
                children: [
                  Icon(iconData),
                  const SizedBox(width: 16),
                  Expanded(child: Text(message, style: TStyles.body)),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          // backgroundColor: backgroundColor,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        );
}
