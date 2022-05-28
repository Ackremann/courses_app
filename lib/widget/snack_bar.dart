import 'package:courses_app/const/resources/color_manager.dart';

import '../../../../../core/services/routes/routes.dart';
import 'package:flutter/material.dart';

showSnackBar(String message, {bool isError = false}) =>
    ScaffoldMessenger.of(MagicRouter.currentContext).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? ColorManager.error : ColorManager.white,
      ),
    );
