

import 'package:equatable/equatable.dart';

abstract class LoadingEvent extends Equatable{

  const LoadingEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class StartLoading extends LoadingEvent{}
class StopLoading extends LoadingEvent{}