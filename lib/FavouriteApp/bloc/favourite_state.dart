//part of 'favourite_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/FavouriteApp/model/favourite_model.dart';

enum ListStatus {
  loading, success, failure
}
 class FavouriteState extends Equatable{

  final List<FavouriteItemModel> favouriteList ;
  final ListStatus listStatus;

  FavouriteState({this.favouriteList= const [], this.listStatus= ListStatus.loading});

  FavouriteState copyWith({List<FavouriteItemModel>? favouriteList, ListStatus? listStatus}){
    return FavouriteState(
      favouriteList: favouriteList ?? this.favouriteList,
      listStatus:  listStatus ?? this.listStatus
    );
  }
  @override
  // TODO: implement props
  List<Object?> get props => [favouriteList, listStatus];
}

final class FavouriteInitial extends FavouriteState {}
