import 'package:flutter/material.dart';
import 'package:trabalho_jogo_da_velha/app/home/my_home_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  final _controller = MyHomeController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:EdgeInsets.all(10.0), 
                  ),
                  Text('Jogo da véia',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 135, 233, 236),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    const Padding(
                      padding:EdgeInsets.all(10),
                    ),
                    Text('${_controller.mensagem} ${_controller.jogadores}',
                    style: TextStyle(
                      backgroundColor: _controller.corFundo,
                      fontSize: 20,
                      color: const Color.fromARGB(209, 178, 252, 252),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),),
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding:EdgeInsets.all(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),
                        child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoUm,
                            controller: _controller.campoUm,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),
                          child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoDois,
                            controller: _controller.campoDois,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),                        
                          child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoTres,
                            controller: _controller.campoTres,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),
                        child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoQuatro,
                            controller: _controller.campoQuatro,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),
                          child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoCinco,
                            controller: _controller.campoCinco,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),                        
                          child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoSeis,
                            controller: _controller.campoSeis,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),
                        child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoSete,
                            controller: _controller.campoSete,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),
                          child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoOito,
                            controller: _controller.campoOito,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color.fromARGB(73, 36, 190, 201),                        
                          child: SizedBox(
                          width: 70,
                          height: 50,
                          child: TextFormField(
                            enabled: _controller.bloqueioCampoNove,
                            controller: _controller.campoNove,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 178, 252, 252),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding:EdgeInsets.all(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      ElevatedButton (
                        onPressed: () {
                          setState(() {
                            _controller.validaAdicionaValores();
                            _controller.verificaValoresAdicionados();
                            _controller.verificaListaCompleta();
                          });                      
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 60, 89, 143),
                        ),
                        child: const Text('Continuar Jogo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(209, 178, 252, 252)
                          )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding:EdgeInsets.all(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      ElevatedButton (
                        onPressed: () {
                          setState(() {
                            //Realiza o reload na página ao clicar em Reiniciar Jogo
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Jogo da véia',)),
                            );
                          });                      
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 60, 89, 143),
                        ),
                        child: const Text('Reiniciar jogo', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(209, 178, 252, 252)
                          )
                        ),
                      ),
                    ],
                  ),
                ], 
              ),
            ],
          )
        ),
      ),
    );
  }

}