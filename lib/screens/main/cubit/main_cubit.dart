import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  void checkCharacterSelected() async {
    final prefs = await SharedPreferences.getInstance();
    final isCharacterSelected = prefs.getString('character') != null;
    if (isCharacterSelected) {
      emit(CharacterSelected());
    } else {
      emit(CharacterNotSelected());
    }
  }
}
