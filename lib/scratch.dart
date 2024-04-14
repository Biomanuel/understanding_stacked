import 'package:un_stacked/app/app.locator.dart';
import 'package:un_stacked/core/services/image_picker.dart';

void main() {
  setupLocator();
  final imagePicker1 = ImagePicker();
  final imagePicker2 = locator<ImagePicker>();
  final imagePicker3 = locator<ImagePicker>();

  imagePicker1.pickImage();
  imagePicker1.pickImage();
  imagePicker2.pickImage();
  imagePicker3.pickImage();
  imagePicker1.pickImage();
}
