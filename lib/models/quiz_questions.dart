class QuizQuestions {
  const QuizQuestions(
    this.question,
    this.answers,
  );

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final shuffledAnswer = List.of(answers); // Copy the answers
    shuffledAnswer.shuffle(); // Shuffle the answers
    return shuffledAnswer; // Return the shuffled answers
  }
}
