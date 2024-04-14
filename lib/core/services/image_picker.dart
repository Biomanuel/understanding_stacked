int instanceCount = 0;

class ImagePicker {
  ImagePicker() {
    instanceCount++;
  }

  void pickImage() {
    print("The no of times this class has been created is: $instanceCount");
  }

  void pickVideo() {}
  void pickGif() {}
}
