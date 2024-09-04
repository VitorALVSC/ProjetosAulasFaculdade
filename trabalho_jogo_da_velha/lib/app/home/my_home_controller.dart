import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';


class MyHomeController {
    final String _x = 'x';
    final String _o = 'o';

    String mensagem = 'Vez do jogador:';
    Color corFundo = const Color.fromARGB(255, 60, 89, 143);
    String jogadores = 'X';
    
    final TextEditingController campoUm = TextEditingController();
    final TextEditingController campoDois = TextEditingController();
    final TextEditingController campoTres = TextEditingController();
    final TextEditingController campoQuatro = TextEditingController();
    final TextEditingController campoCinco = TextEditingController();
    final TextEditingController campoSeis = TextEditingController();
    final TextEditingController campoSete = TextEditingController();
    final TextEditingController campoOito = TextEditingController();
    final TextEditingController campoNove = TextEditingController();

    bool bloqueioCampoUm = true;
    bool bloqueioCampoDois = true;
    bool bloqueioCampoTres = true;
    bool bloqueioCampoQuatro = true;
    bool bloqueioCampoCinco = true;
    bool bloqueioCampoSeis = true;
    bool bloqueioCampoSete = true;
    bool bloqueioCampoOito = true;
    bool bloqueioCampoNove = true;

    final List<List<String>> tabuleiro = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']  
    ];

    bool vencedor = false;

  //Alterna a informação do jogador e cor em cada jogada.
  void alternaJogadores() {

    if (jogadores == 'X') {
      jogadores = 'O';
    } else {
      jogadores = 'X';
    }

  }

  //Verifica se o valor informado no campo é o valor desejado.
  void validaAdicionaValores() {

    if (_x != campoUm.text && _o != campoUm.text && campoUm.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoUm.clear();
    } else if (campoUm.text == _x || campoUm.text == _o) {

        if (bloqueioCampoUm == true) {
          bloqueioCampoUm = false;
          tabuleiro[0][0] = campoUm.text;
          alternaJogadores();
        }
    }

    if (_x != campoDois.text && _o != campoDois.text && campoDois.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoDois.clear();
    } else if (campoDois.text == _x || campoDois.text == _o) {

      if (bloqueioCampoDois == true) {
        bloqueioCampoDois = false;
        tabuleiro[0][1] = campoDois.text;
        alternaJogadores();
      }
    }

    if (_x != campoTres.text && _o != campoTres.text && campoTres.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoTres.clear();
    } else if (campoTres.text == _x || campoTres.text == _o) {

      if (bloqueioCampoTres == true) {
        bloqueioCampoTres = false;
        tabuleiro[0][2] = campoTres.text;
        alternaJogadores();
      }

    }

    if (_x != campoQuatro.text && _o != campoQuatro.text && campoQuatro.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoQuatro.clear();
    } else if (campoQuatro.text == _x || campoQuatro.text == _o) {

      if (bloqueioCampoQuatro == true) {
        bloqueioCampoQuatro = false;
        tabuleiro[1][0] = campoQuatro.text;
        alternaJogadores();
      }

    }

    if (_x != campoCinco.text && _o != campoCinco.text && campoCinco.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoCinco.clear();
    } else if (campoCinco.text == _x || campoCinco.text == _o) {

      if (bloqueioCampoCinco == true) {
        bloqueioCampoCinco = false;
        tabuleiro[1][1] = campoCinco.text;
        alternaJogadores();
      }

    }

    if (_x != campoSeis.text && _o != campoSeis.text && campoSeis.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoSeis.clear();
    } else if (campoSeis.text == _x || campoSeis.text == _o) {

      if (bloqueioCampoSeis == true) {
        bloqueioCampoSeis = false;
        tabuleiro[1][2] = campoSeis.text;
        alternaJogadores();
      }

    }

    if (_x != campoSete.text && _o != campoSete.text && campoSete.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoSete.clear();
    } else if (campoSete.text == _x || campoSete.text == _o) {

      if (bloqueioCampoSete == true) {
        bloqueioCampoSete = false;
        tabuleiro[2][0] = campoSete.text;
        alternaJogadores();
      }

    }

    if (_x != campoOito.text && _o != campoOito.text && campoOito.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoOito.clear();
    } else if (campoOito.text == _x || campoOito.text == _o) {

      if (bloqueioCampoOito == true) {
        bloqueioCampoOito = false;
        tabuleiro[2][1] = campoOito.text;
        alternaJogadores();
      }

    }

    if (_x != campoNove.text && _o != campoNove.text && campoNove.text != '') {
        AlertController.show("Atenção", "O valor informado não é o esperado.", TypeAlert.warning);
        campoNove.clear();
    } else if (campoNove.text == _x || campoNove.text == _o) {

      if (bloqueioCampoNove == true) {
        bloqueioCampoNove = false;
        tabuleiro[2][2] = campoNove.text;
        alternaJogadores();
      }

    } 
  }

  //Desabilita os campos caso tenha um ganhador
  void desabilitarCampos() {
    bloqueioCampoUm = false;
    bloqueioCampoDois = false;
    bloqueioCampoTres = false;
    bloqueioCampoQuatro = false;
    bloqueioCampoCinco = false;
    bloqueioCampoSeis = false;
    bloqueioCampoSete = false;
    bloqueioCampoOito = false;
    bloqueioCampoNove = false;
  }

  bool teste = true;
  void verificaValoresAdicionados() {

    //Verifica os valores das linhas
    for (int i = 0; i < 3; i++) {
      if (tabuleiro[i][0] == _x && tabuleiro[i][1] == _x && tabuleiro[i][2] == _x) {
          AlertController.show("Parabéns!", "Jogador X ganhou.", TypeAlert.success);
          desabilitarCampos();
          mensagem = 'O jogador X foi o ganhador';
          jogadores = '';
          vencedor = true;
          
      } else if (tabuleiro[i][0] == _o && tabuleiro[i][1] == _o && tabuleiro[i][2] == _o) {
          AlertController.show("Parabéns!", "Jogador O ganhou.", TypeAlert.success);
          desabilitarCampos();
          mensagem = 'O jogador O foi o ganhador';
          jogadores = '';
          vencedor = true;
      }
    }

    // Verifica os valores das colunas
    for (int i = 0; i < 3; i++) {
      if (tabuleiro[0][i] == _x && tabuleiro[1][i] == _x && tabuleiro[2][i] == _x) {
          AlertController.show("Parabéns!", "Jogador X ganhou.", TypeAlert.success);
          desabilitarCampos();
          mensagem = 'O jogador X foi o ganhador';
          jogadores = '';
          vencedor = true;
      } else if (tabuleiro[0][i] == _o && tabuleiro[1][i] == _o && tabuleiro[2][i] == _o) {
          AlertController.show("Parabéns!", "O ganhou.", TypeAlert.success);
          desabilitarCampos();
          mensagem = 'O jogador O foi o ganhador';
          jogadores = '';
          vencedor = true;
      }
    }

    // Verifica os valores das diagonais
    if ((tabuleiro[0][0] == _x && tabuleiro[1][1] == _x && tabuleiro[2][2] == _x) ||
        (tabuleiro[0][2] == _x && tabuleiro[1][1] == _x && tabuleiro[2][0] == _x)) {
        AlertController.show("Parabéns!", "Jogador X ganhou.", TypeAlert.success);
        desabilitarCampos();
        mensagem = 'O jogador X foi o ganhador';
        jogadores = '';
        vencedor = true;
    } else if ((tabuleiro[0][0] == _o && tabuleiro[1][1] == _o && tabuleiro[2][2] == _o) ||
        (tabuleiro[0][2] == _o && tabuleiro[1][1] == _o && tabuleiro[2][0] == _o)) {
        AlertController.show("Parabéns!", "Jogador O ganhou.", TypeAlert.success);
        desabilitarCampos();
        mensagem = 'O jogador O foi o ganhador';
        jogadores = '';
        vencedor = true;
    }
  }

  //Every verifica se todos as posições estão preenchidas, se estiverem retorna true
  bool tabuleiroCompleto(List<List<String>> tabuleiro) {
    return tabuleiro.every((linha) => linha.every((celula) => celula.isNotEmpty));
  }

  //Função para chamar a verificação das posições do tabuleiro
  void verificaListaCompleta() {

    if (tabuleiroCompleto(tabuleiro) && vencedor == false) {
      mensagem = 'O jogo terminou em empate';
      jogadores = '';
    }
  }
  
}