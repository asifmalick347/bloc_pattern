import 'package:image_picker/image_picker.dart';

class ImagePickerUtils {
  ImagePicker imagePicker = ImagePicker();

  Future<XFile?> pickImageFromCamera() async {
    XFile? xFile = await imagePicker.pickImage(source: ImageSource.camera);
    return xFile;
  }

  Future<XFile?> pickImageFromGallery() async {
    XFile? xFile = await imagePicker.pickImage(source: ImageSource.gallery);
    return xFile;
  }
}
