import 'package:bloc/bloc.dart';
import 'package:telegram/screens/mainview/state/main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(ChatState());
}
