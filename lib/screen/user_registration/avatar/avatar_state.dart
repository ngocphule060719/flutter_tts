
import 'dart:io';

abstract class AvatarState{}

class LoadingState extends AvatarState{}

class UpdateSuccess extends AvatarState{
  File? image;
  UpdateSuccess(this.image);
}

class UpdateFail extends AvatarState{}