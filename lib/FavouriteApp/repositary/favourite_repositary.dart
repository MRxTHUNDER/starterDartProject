import 'package:myapp/FavouriteApp/model/favourite_model.dart';

class FavouriteRepositary {

  Future<List<FavouriteItemModel>> fetchItems() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    return List.of(_generateList(10));
  }

  List<FavouriteItemModel> _generateList(int length) {
    return List.generate(length,
        (index) => FavouriteItemModel(id: '$index', value: 'Item $index'));
  }
}
