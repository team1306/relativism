import 'dart:convert';

import 'package:file_picker/file_picker.dart';

import 'choreo.dart';

Choreo? lastOpenedFile;

void openChoreoFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ["chor"],
  );
  if (result != null && result.isSinglePick) {
    PlatformFile file = result.files.first;
    String string = await file.xFile.readAsString();

    Map<String, dynamic> map = jsonDecode(string);

    lastOpenedFile = Choreo.fromJson(map);
  }
}
