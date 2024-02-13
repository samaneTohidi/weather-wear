import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'avatar_state.dart';

class AvatarCubit extends Cubit<AvatarState> {
  AvatarCubit() : super(AvatarInitial());
}
