// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'grid_event.dart';
part 'grid_state.dart';

class GridBloc extends Bloc<GridEvent, GridState> {
  GridBloc() : super(GridState()) {
    on<selectGrid>((event, emit) {
      List<bool>? data1;
      data1 = [...state.data];
      data1[event.index!] = !data1[event.index!];

      final bool status = data1.every((mystatus) => mystatus == true);
      emit(GridState(data: data1));

      if (status == true) {
        emit(state.copyWith(status: true));
      }
    });
  }
}
