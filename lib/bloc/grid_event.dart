// ignore_for_file: must_be_immutable, camel_case_types

part of 'grid_bloc.dart';

class GridEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class selectGrid extends GridEvent {
  selectGrid({this.index, this.data});
  int? index;
  List<bool>? data;

  @override
  List<Object?> get props => [index, data];
}
