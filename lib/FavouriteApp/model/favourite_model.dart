import 'package:equatable/equatable.dart';

class FavouriteItemModel extends Equatable {
  final String id;
  final String value;
  final bool isFavourite;

  FavouriteItemModel({
     required this.id,
     required this.value,
    this.isFavourite = false,
  });

  FavouriteItemModel copyWith({String? id, String? value, bool? isFavourite}){
    return FavouriteItemModel(
      id: id ?? this.id,
      isFavourite: isFavourite ?? this.isFavourite,
      value: value ?? this.value,
    );
}

  @override
  // TODO: implement props
  List<Object?> get props => [id, value, isFavourite];
}
