import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_pomodoro/components/cronometro_botao.dart';
import 'package:provider/provider.dart';
import 'package:flutter_pomodoro/store/pomodoro.store.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hora de Trabalhar",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "${store.minutos.toString().padLeft(2, "0")}:${store.segundos.toString().padLeft(2, "0")}",
            style: const TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${store.iniciado}"),
                if (store.iniciado == 0)
                  CronometroBotao(
                    texto: "Iniciar",
                    icone: Icons.play_arrow,
                    click: store.iniciar,
                  ),
                if (store.iniciado == 1)
                  CronometroBotao(
                    texto: "Parar",
                    icone: Icons.stop,
                    click: store.parar,
                  ),
                CronometroBotao(
                  texto: "Reiniciar",
                  icone: Icons.refresh,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
