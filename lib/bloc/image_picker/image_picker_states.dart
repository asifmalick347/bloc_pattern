import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerStates extends Equatable {
  final XFile? xFile;

  const ImagePickerStates({this.xFile});

  ImagePickerStates copyWith({XFile? xFile}) {
    return ImagePickerStates(xFile: xFile ?? this.xFile);
  }

  @override
  List<Object?> get props => [xFile];
}
