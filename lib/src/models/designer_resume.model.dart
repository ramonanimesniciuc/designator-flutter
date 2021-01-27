class DesignerResumee {
  String _studies;
  List<String> _images = [];

  DesignerResumee(resumee){
    _studies = resumee.studies;
    _images = resumee.images;
  }

  String get studies => _studies;
  List<String> get images => _images;
}