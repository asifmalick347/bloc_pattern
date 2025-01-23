import 'package:bloc_by_at/bloc/image_picker/image_picker_events.dart';
import 'package:bloc_by_at/bloc/image_picker/image_picker_states.dart';
import 'package:bloc_by_at/utils/image_picker_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvents, ImagePickerStates> {
  ImagePickerUtils imagePickerUtils;

  ImagePickerBloc(this.imagePickerUtils) : super(ImagePickerStates()) {
    on<PickCameraImage>(_pickCameraImage);
  }

  void _pickCameraImage(
      PickCameraImage events, Emitter<ImagePickerStates> emit) async {
    XFile? xFile = await imagePickerUtils.pickImageFromCamera();
    emit(state.copyWith(xFile: xFile));
  }
}
