
class RestaurantModel{

  String _name;
  String _title;
  String _ps;
  String _log;
  String _phn;

  RestaurantModel(this._name, this._title, this._ps, this._log, this._phn);

  String get phn => _phn;

  set phn(String value) {
    _phn = value;
  }

  String get log => _log;

  set log(String value) {
    _log = value;
  }

  String get ps => _ps;

  set ps(String value) {
    _ps = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}