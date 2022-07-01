
import 'dart:io';

abstract class AvatarState{}

class PopUpOption extends AvatarState{

}

class LoadingState extends AvatarState{}

class UpdateSuccess extends AvatarState{
  File? image;
  UpdateSuccess(this.image);

  UpdateSuccess cloneWith({File? newImage}) {
    return UpdateSuccess(newImage ?? this.image);
  }
}

class UpdateFail extends AvatarState{}