import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int iniciado = 0;
  @observable
  int minutos = 2;
  @observable
  int segundos = 0;
  @observable
  int tempoTrabalho = 2;
  @observable
  int tempoDescanso = 1;

  @action
  void iniciar() {
    iniciado = 1;
    print('iniciou');
  }

  @action
  void parar() {
    iniciado = 0;
  }

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
  }

  @action
  void decrementarTempoTrabalho() {
    tempoTrabalho--;
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
  }

  @action
  void decrementarTempoDescanso() {
    tempoDescanso--;
  }
}
