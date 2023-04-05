import 'package:flutter/material.dart';
import 'package:nassem/api/ads_api.dart';
import 'package:nassem/model/ads_model.dart';
import 'package:nassem/model/ads_viewmodel.dart';

class HomeViewModel extends ChangeNotifier {
  List<AdsViewModel>? listAds;

  Future<void> fetchAds() async {
    List<AdsModel> jsonMap = await adsApi();
    listAds = jsonMap.map((e) => AdsViewModel(adsModel: e)).toList();
    notifyListeners();
  }
}
