import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(q: 'Some cats are actually allergic to humans', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Hot Reload in Flutter works For Fast Loading the App.', a: false),
    Question(q: 'The secret of getting ahead is getting started.', a: true),
    Question(q: 'It’s hard to beat a person who never gives up.', a: true),
    Question(q: 'Only the paranoid survive.', a: false),
    Question(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Question(q: 'Never Had luck never needed it', a: true),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  getQuestionText (){
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer (){
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      // print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}