import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _autoUid = prefs.getInt('ff_autoUid') ?? _autoUid;
  }

  SharedPreferences prefs;

  int pageViewCount = 0;

  String uploadImg;

  int _autoUid = 0;
  int get autoUid => _autoUid;
  set autoUid(int _value) {
    _autoUid = _value;
    prefs.setInt('ff_autoUid', _value);
  }

  String takeVehicleType = '2 weeler';

  DateTime fromD;

  DateTime toD;

  String captchaVal = '';
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
