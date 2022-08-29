import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/base/base_controller.dart';

class ProfileController extends BaseController {
  final ImagePicker _imagePicker;

  final Rx<File> _image = Rx(File(''));

  File get image => _image.value;

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

  ProfileController(this._imagePicker);

  onSaveButtonClick() {}

  void onImagePick() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    _image.value = File(image.path);
  }
}
