import 'package:equatable/equatable.dart';

class EBookModel extends Equatable {
  const EBookModel({required this.id, required this.title, required this.storagePath});

  final int id;
  final String title;
  final String storagePath;

  @override
  List<Object> get props => [id, title, storagePath];
}