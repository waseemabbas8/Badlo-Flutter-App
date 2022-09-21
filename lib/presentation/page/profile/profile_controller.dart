import 'dart:io';

import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/user.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:badlo/domain/repository/preference_repository.dart';
import 'package:badlo/domain/repository/profile_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/base/base_controller.dart';

class ProfileController extends BaseController {
  final ProfileRepository _profileRepository;
  final PreferenceRepository _preferenceRepository;
  final ImagePicker _imagePicker;

  final Rx<File> _image = Rx(File(''));

  File get image => _image.value;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController nicController = TextEditingController();

  TextEditingController contactController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  late User _user;
  late UserProfile? _profile;

  ProfileController(this._imagePicker, this._profileRepository, this._preferenceRepository);

  @override
  void onInit() {
    _user = _preferenceRepository.getUser()!;
    _profile = _preferenceRepository.getProfile();

    //initialize text fields
    nameController.text = _profile?.name ?? '';
    nicController.text = _profile?.nic ?? '';
    contactController.text = _profile?.contactNumber ?? '';
    addressController.text = _profile?.address ?? '';
    descriptionController.text = _profile?.description ?? '';

    super.onInit();
  }

  void onSaveButtonClick() async {
    final profile = UserProfile(
      _profile?.id ?? 0,
      _user.authId,
      nameController.text,
      nicController.text,
      addressController.text,
      _profile?.image ?? '',
      contactController.text,
      descriptionController.text,
    );
    final GenericResponse<UserProfile?> response;
    if (_profile == null) {
      response = await _profileRepository.add(profile, image);
    } else {
      response = await _profileRepository.edit(profile, image);
    }
    if (response.result is SuccessResult) {
      Get.back();
    } else {
      Get.snackbar('Error', (response.result as ErrorResult).msg);
    }
  }

  void onImagePick() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    _image.value = File(image.path);
  }
}
