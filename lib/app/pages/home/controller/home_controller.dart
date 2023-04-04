import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  bool oTurn = true;
  List<String> board = ['', '', '', '', '', '', '', '', ''];
  List<int> matched = [];
  String winner = '';
  String vencedor = '';
  int oScore = 0;
  int xScore = 0;
  int completedFields = 0;
  bool isGameOver = false;
  bool isGaming = true;
  String jogador = '';
  TextEditingController namePlayer1Controller = TextEditingController();
  TextEditingController namePlayer2Controller = TextEditingController();

  get namePlayer1 => namePlayer1Controller.text;
  get namePlayer2 => namePlayer2Controller.text;

  final formKey = GlobalKey<FormState>();

  void play(int index) {
    if (oTurn && board[index] == '') {
      board[index] = 'O';
      selectPlayer();
      notifyListeners();
    } else if (!oTurn && board[index] == '') {
      board[index] = 'X';
      selectPlayer();
      notifyListeners();
    }
    oTurn = !oTurn;
    checkWinner();
    notifyListeners();
  }

  void reset() {
    board = ['', '', '', '', '', '', '', '', ''];
    notifyListeners();
    isGaming = true;
    matched = [];
    winner = '';
    vencedor = '';
    notifyListeners();
  }

  void resetScore() {
    oScore = 0;
    xScore = 0;
    notifyListeners();
  }

  void updateScore(String winner) {
    if (winner == 'O') {
      oScore++;
      notifyListeners();
    } else if (winner == 'X') {
      xScore++;
      notifyListeners();
    }
    isGameOver = true;
    notifyListeners();
  }

  void getWinner(String winner) {
    if (winner == 'O') {
      vencedor = 'Ganhador $namePlayer1';
      notifyListeners();
    } else if (winner == 'X') {
      vencedor = 'Ganhador $namePlayer2';
      notifyListeners();
    } else {
      vencedor = 'Empate';
      notifyListeners();
    }
  }

  void selectPlayer() {
    if (oTurn) {
      jogador = 'Sua vez $namePlayer2';
      notifyListeners();
    } else {
      jogador = 'Sua vez $namePlayer1';
      notifyListeners();
    }
  }

  void checkWinner() {
    if (board[0] == board[1] && board[0] == board[2] && board[0] != '') {
      getWinner(board[0]);
      matched.addAll([0, 1, 2]);
      updateScore(board[0]);
      isGaming = false;
      notifyListeners();
    }
    if (board[3] == board[4] && board[3] == board[5] && board[3] != '') {
      getWinner(board[3]);
      matched.addAll([3, 4, 5]);
      updateScore(board[3]);
      isGaming = false;
      notifyListeners();
    }
    if (board[6] == board[7] && board[6] == board[8] && board[6] != '') {
      getWinner(board[6]);
      matched.addAll([6, 7, 8]);
      updateScore(board[6]);
      isGaming = false;
      notifyListeners();
    }
    if (board[0] == board[3] && board[0] == board[6] && board[0] != '') {
      getWinner(board[0]);
      matched.addAll([0, 3, 6]);
      updateScore(board[0]);
      isGaming = false;
      notifyListeners();
    }
    if (board[1] == board[4] && board[1] == board[7] && board[1] != '') {
      getWinner(board[1]);
      matched.addAll([1, 4, 7]);
      updateScore(board[1]);
      isGaming = false;
      notifyListeners();
    }
    if (board[2] == board[5] && board[2] == board[8] && board[2] != '') {
      getWinner(board[2]);
      matched.addAll([2, 5, 8]);
      updateScore(board[2]);
      isGaming = false;
      notifyListeners();
    }
    if (board[0] == board[4] && board[0] == board[8] && board[0] != '') {
      getWinner(board[0]);
      matched.addAll([0, 4, 8]);
      updateScore(board[0]);
      isGaming = false;
      notifyListeners();
    }
    if (board[6] == board[4] && board[6] == board[2] && board[6] != '') {
      getWinner(board[6]);
      matched.addAll([6, 4, 2]);
      updateScore(board[2]);
      isGaming = false;
      notifyListeners();
    }
    if (!board.contains('') && winner == '' && isGaming) {
      getWinner('Empate');
      isGaming = false;
      notifyListeners();
    }
  }
}
