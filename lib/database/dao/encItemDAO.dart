import 'package:sembast/sembast.dart';
import '../model/encItemModel.dart';
import '../setup/databaseSetup.dart';

class EncItemDao{
  static const String folderName = "EncItems";
  final _encItemFolder = intMapStoreFactory.store(folderName);


  Future<Database> get  _db  async => await AppDatabase.instance.database;

  Future insertEncItem(EncItem encItem) async{
    final finder = Finder(filter: Filter.equals('title', encItem.title));
    final recordSnapshot = await _encItemFolder.find(await _db, finder: finder);

    if(recordSnapshot.length == 0) {
      await _encItemFolder.add(await _db, encItem.toJson());
      print('Enciclopedia Item Inserted successfully !!');
    }
    else{
      print('Enciclopedia Item Alredy Exists !!');
    }
  }

  Future updateEncItem(EncItem encItem) async{
    final finder = Finder(filter: Filter.equals('title', encItem.title));
    await _encItemFolder.update(await _db, encItem.toJson(),finder: finder);

  }


  Future delete(EncItem encItem) async{
    final finder = Finder(filter: Filter.equals('title', encItem.title));
    await _encItemFolder.delete(await _db, finder: finder);
  }

  Future<List<EncItem>> getAllEncItems()async{
    final recordSnapshot = await _encItemFolder.find(await _db);
    return recordSnapshot.map((snapshot){
      final encItem = EncItem.fromJson(snapshot.value);
      return encItem;
    }).toList();
  }


}
