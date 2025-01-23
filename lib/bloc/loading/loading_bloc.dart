

import 'package:bloc/bloc.dart';
import 'package:bloc_by_at/bloc/loading/loading_event.dart';
import 'package:bloc_by_at/bloc/loading/loading_state.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState>{

  LoadingBloc(): super(LoadingState()){
    on<StartLoading>(_startLoading);
    on<StopLoading>(_stopLoading);
  }

  void _startLoading(StartLoading event, Emitter<LoadingState> emit){
    emit(state.copyWith(showLoading: true));
  }

  void _stopLoading(StopLoading event, Emitter<LoadingState> emit){
    emit(state.copyWith(showLoading: false));
  }
}