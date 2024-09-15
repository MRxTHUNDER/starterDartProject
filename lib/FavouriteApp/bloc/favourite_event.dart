//part of 'favourite_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/FavouriteApp/model/favourite_model.dart';


abstract class FavouriteEvent extends Equatable{

  FavouriteEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FetchList extends FavouriteEvent{
}


class FavouriteItem extends FavouriteEvent{
  FavouriteItemModel item;
  FavouriteItem({required this.item});
}


