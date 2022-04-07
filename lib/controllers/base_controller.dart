import 'package:flutter/material.dart';
import 'package:waterapp/services/app_exceptions.dart';
import 'package:waterapp/utils/dialog_helper.dart';

class BaseController {
  void handleError(error) {
    if (error is BadRequestException) {
      //Show Dialog
      var message = error.message ?? "";
      DialogHelper.showErrorDialog(description: message);
    } else if (error is FetchDataException) {
      var message = error.message ?? "";
      DialogHelper.showErrorDialog(description: message);
    } else if (error is ApiNotRespondingException) {
      DialogHelper.showErrorDialog(
          description: 'Oops! It took longer to respond');
    }
  }
}
