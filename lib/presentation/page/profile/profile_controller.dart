import 'package:flutter/cupertino.dart';

import '../../core/base/base_controller.dart';

class ProfileController extends BaseController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController =
      TextEditingController(text: 'Ali Rehan');

  TextEditingController nicController =
      TextEditingController(text: "34101-04578-3");

  TextEditingController contactController =
      TextEditingController(text: "021-123456");

  TextEditingController addressController =
      TextEditingController(text: "Lahore, Punjab");

  TextEditingController descriptionController =
      TextEditingController(text: "Here is a description..");

  onSaveButtonClick() {}
}
