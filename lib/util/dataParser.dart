import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../database/dao/encItemDAO.dart';
import '../database/model/encItemModel.dart';

Future<String> _loadDataAsset() async {
return await rootBundle.loadString('assets/data.json');
}

Future loadData() async {
  EncItemDao encItemDao = EncItemDao();
  String jsonData = await _loadDataAsset();
  List data = jsonDecode(jsonData);

  await Future.forEach(data, (item) async {
    EncItem encItem = EncItem(type: item['type'], title: item['title'], cancerTypes: item['cancerTypes'], analysisObj: item['analysisObj'], usedFor: item['usedFor']);
    await encItemDao.insertEncItem(encItem);
  });
}