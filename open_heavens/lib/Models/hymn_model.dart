
class HymnModel {
  final String title;
  final String? chorus;
  final List<String>? verses;
  final String? sound;

  HymnModel(
    {
      required this.title, this.chorus, this.verses, this.sound,}
    );

    static HymnModel fromJson(json) {
      return HymnModel(
        title : json['title'],
        chorus : json['chorus'],
        verses : json['verses'],
        // sound : ['sound']
        );
      
    }
}