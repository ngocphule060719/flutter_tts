import 'dart:io';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_tts/screen/user_registration/avatar/avatar_event.dart';
import 'package:flutter_tts/screen/user_registration/avatar/avatar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AvatarBloc extends Bloc<AvatarEvent, AvatarState>{
  late ImagePicker imagePicker = ImagePicker();

  AvatarBloc() : super(LoadingState()) {
    on<ImageGallery>((event, emit) => updateImageGallery(emit));
  }

  FutureOr updateImageGallery(Emitter<AvatarState> emitter) async {
    try {
      final newImage = await imagePicker.pickImage(source: ImageSource.gallery);
      if (newImage == null){
       return;
      }
      final newImagePath = File(newImage.path);
      emitter(UpdateSuccess(newImagePath));
    } on PlatformException catch (error) {
      emitter(UpdateFail());
      print('error:' + error.toString());
    }
  }

}