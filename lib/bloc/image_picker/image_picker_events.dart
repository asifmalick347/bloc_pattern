import 'package:equatable/equatable.dart';

class ImagePickerEvents extends Equatable {
  const ImagePickerEvents();

  @override
  List<Object?> get props => [];
}

class PickCameraImage extends ImagePickerEvents {}

class PickGalleryImage extends ImagePickerEvents {}
