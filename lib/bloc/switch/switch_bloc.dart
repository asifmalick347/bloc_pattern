
import 'package:bloc/bloc.dart';
import 'package:bloc_by_at/bloc/switch/switch_event.dart';
import 'package:bloc_by_at/bloc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState>{

  SwitchBloc(): super(SwitchState()){
    on<ToggleSwitch>(_toggleSwitch);
  }

  void _toggleSwitch(ToggleSwitch event, Emitter<SwitchState> emit){
    emit(state.copyWith(isSwitchOn: !state.isSwitchOn));
  }
}