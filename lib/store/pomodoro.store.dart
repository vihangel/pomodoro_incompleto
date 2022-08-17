import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int iniciado = 0;
  int minutos = 2;
  int segundos = 0;
  int tempoTrabalho = 2;
  int tempoDescanso = 1;

  @action
  void iniciar() {
    iniciado = 1;
  }

  void parar() {
    iniciado = 0;
  }

  void incrementarTempoTrabalho() {
    tempoTrabalho++;
  }

  void decrementarTempoTrabalho() {
    tempoTrabalho--;
  }

  void incrementarTempoDescanso() {
    tempoDescanso++;
  }

  void decrementarTempoDescanso() {
    tempoDescanso--;
  }
}
