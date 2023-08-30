class QuizQuestion{
  const QuizQuestion(this.text, this.answers);
  
  final String text;
  final List<String> answers;

  List<String> getShuffled(){
   final list =  List.of(answers);
   list.shuffle();
   return list;
  }
}