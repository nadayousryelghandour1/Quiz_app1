
class QuizQuestion {

  final String text;
  final List<String> answers;

  QuizQuestion ( this.text, this.answers);

  List<String>getshuffelAnswers(){
    var shiffledList = List.of(answers);
    shiffledList.shuffle();
    return shiffledList;
  }
}