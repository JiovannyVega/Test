import 'package:flutter/material.dart';

class Mycolors {
  static const Color primaryColor = Color(0xFF1E88E5); // Azul principal
  static const Color secondaryColor = Color(0xFF42A5F5); // Azul secundario
  static const Color backgroundColor = Color(0xFFE3F2FD); // Fondo claro
  static const Color buttonColor = Color(0xFF2196F3); // Color de botones
  static const Color buttonTextColor = Colors.white;
}

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuizApp(),
      ),
    );

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  // Variables para almacenar las respuestas seleccionadas
  final List<int?> _respuestas = List.filled(40, null);

  int conteoA = 0;
  int conteoB = 0;
  int conteoC = 0;
  int visual = 0;
  int auditivo = 0;
  int cinestesico = 0;

  Widget _buildAnswerButton(String answer, int questionIndex) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Mycolors.buttonColor,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      ),
      onPressed: () {
        setState(() {
          _respuestas[questionIndex] =
              answer.hashCode; // Aquí puedes guardar la respuesta seleccionada
        });
      },
      child: Text(answer),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Estilos de Aprendizaje'),
          backgroundColor: Mycolors.primaryColor,
        ),
        body: Container(
          color: Mycolors.backgroundColor,
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              _buildQuestion(
                1,
                '¿Cuál de las siguientes actividades disfrutas más?',
                ['Escuchar música', 'Ver películas', 'Bailar con buena música'],
              ),
              _buildQuestion(
                2,
                '¿Qué programa de televisión prefieres?',
                [
                  'Reportajes de descubrimientos y lugares',
                  'Cómico y de entretenimiento',
                  'Noticias del mundo'
                ],
              ),
              _buildQuestion(
                3,
                'Cuando conversas con otra persona, tú:',
                ['La escuchas atentamente', 'La observas', 'Tiendes a tocarla'],
              ),
              _buildQuestion(
                4,
                'Si pudieras adquirir uno de los siguientes artículos, ¿cuál elegirías?',
                ['Un jacuzzi', 'Un estéreo', 'Un televisor'],
              ),
              _buildQuestion(
                5,
                '¿Qué prefieres hacer un sábado por la tarde?',
                ['Quedarte en casa', 'Ir a un concierto', 'Ir al cine'],
              ),
              _buildQuestion(
                6,
                '¿Qué tipo de exámenes se te facilitan más?',
                ['Examen oral', 'Examen escrito', 'Examen de opción múltiple'],
              ),
              _buildQuestion(
                7,
                '¿Cómo te orientas más fácilmente?',
                [
                  'Mediante el uso de un mapa',
                  'Pidiendo indicaciones',
                  'A través de la intuición'
                ],
              ),
              _buildQuestion(
                8,
                '¿En qué prefieres ocupar tu tiempo en un lugar de descanso?',
                ['Pensar', 'Caminar por los alrededores', 'Descansar'],
              ),
              _buildQuestion(
                9,
                '¿Qué te halaga más?',
                [
                  'Que te digan que tienes buen aspecto',
                  'Que te digan que tienes un trato muy agradable',
                  'Que te digan que tienes una conversación interesante'
                ],
              ),
              _buildQuestion(
                10,
                '¿Cuál de estos ambientes te atrae más?',
                [
                  'Uno en el que se sienta un clima agradable',
                  'Uno en el que se escuchen las olas del mar',
                  'Uno con una hermosa vista al océano'
                ],
              ),
              _buildQuestion(
                11,
                '¿De qué manera se te facilita aprender algo?',
                [
                  'Repitiendo en voz alta',
                  'Escribiéndolo varias veces',
                  'Relacionándolo con algo divertido'
                ],
              ),
              _buildQuestion(
                12,
                '¿A qué evento preferirías asistir?',
                [
                  'A una reunión social',
                  'A una exposición de arte',
                  'A una conferencia'
                ],
              ),
              _buildQuestion(
                13,
                '¿De qué manera te formas una opinión de otras personas?',
                [
                  'Por la sinceridad en su voz',
                  'Por la forma de estrecharte la mano',
                  'Por su aspecto'
                ],
              ),
              _buildQuestion(
                14,
                '¿Cómo te consideras?',
                ['Atlético', 'Intelectual', 'Sociable'],
              ),
              _buildQuestion(
                15,
                '¿Qué tipo de películas te gustan más?',
                ['Clásicas', 'De acción', 'De amor'],
              ),
              _buildQuestion(
                16,
                '¿Cómo prefieres mantenerte en contacto con otra persona?',
                [
                  'Por correo electrónico',
                  'Tomando un café juntos',
                  'Por teléfono'
                ],
              ),
              _buildQuestion(
                17,
                '¿Cuál de las siguientes frases se identifican más contigo?',
                [
                  'Me gusta que mi coche se sienta bien al conducirlo',
                  'Percibo hasta el más ligero ruido que hace mi coche',
                  'Es importante que mi coche esté limpio por fuera y por dentro'
                ],
              ),
              _buildQuestion(
                18,
                '¿Cómo prefieres pasar el tiempo con tu pareja?',
                ['Conversando', 'Acariciándose', 'Mirando algo juntos'],
              ),
              _buildQuestion(
                19,
                'Si no encuentras las llaves en una bolsa:',
                [
                  'La buscas mirando',
                  'Sacudes la bolsa para oír el ruido',
                  'Buscas al tacto'
                ],
              ),
              _buildQuestion(
                20,
                'Cuando tratas de recordar algo, ¿cómo lo haces?',
                [
                  'A través de imágenes',
                  'A través de emociones',
                  'A través de sonidos'
                ],
              ),
              _buildQuestion(
                21,
                'Si tuvieras dinero, ¿qué harías?',
                [
                  'Comprar una casa',
                  'Viajar y conocer el mundo',
                  'Adquirir un estudio de grabación'
                ],
              ),
              _buildQuestion(
                22,
                '¿Con qué frase te identificas más?',
                [
                  'Reconozco a las personas por su voz',
                  'No recuerdo el aspecto de la gente',
                  'Recuerdo el aspecto de alguien, pero no su nombre'
                ],
              ),
              _buildQuestion(
                23,
                'Si tuvieras que quedarte en una isla desierta, ¿qué preferirías llevar contigo?',
                [
                  'Algunos buenos libros',
                  'Un radio portátil de alta frecuencia',
                  'Golosinas y comida enlatada'
                ],
              ),
              _buildQuestion(
                24,
                '¿Cuál de los siguientes entretenimientos prefieres?',
                [
                  'Tocar un instrumento musical',
                  'Sacar fotografías',
                  'Actividades manuales'
                ],
              ),
              _buildQuestion(
                25,
                '¿Cómo es tu forma de vestir?',
                ['Impecable', 'Informal', 'Muy informal'],
              ),
              _buildQuestion(
                26,
                '¿Qué es lo que más te gusta de una fogata nocturna?',
                [
                  'El calor del fuego y los bombones asados',
                  'El sonido del fuego quemando la leña',
                  'Mirar el fuego y las estrellas'
                ],
              ),
              _buildQuestion(
                27,
                '¿Cómo se te facilita entender algo?',
                [
                  'Cuando te lo explican verbalmente',
                  'Cuando utilizan medios visuales',
                  'Cuando se realiza a través de alguna actividad'
                ],
              ),
              _buildQuestion(
                28,
                '¿Por qué te distingues?',
                [
                  'Por tener una gran intuición',
                  'Por ser un buen conversador',
                  'Por ser un buen observador'
                ],
              ),
              _buildQuestion(
                29,
                '¿Qué es lo que más disfrutas de un amanecer?',
                [
                  'La emoción de vivir un nuevo día',
                  'Las tonalidades del cielo',
                  'El canto de las aves'
                ],
              ),
              _buildQuestion(
                30,
                'Si pudieras elegir ¿qué preferirías ser?',
                ['Un gran médico', 'Un gran músico', 'Un gran pintor'],
              ),
              _buildQuestion(
                31,
                'Cuando eliges tu ropa, ¿qué es lo más importante para ti?',
                ['Que sea adecuada', 'Que luzca bien', 'Que sea cómoda'],
              ),
              _buildQuestion(
                32,
                '¿Qué es lo que más disfrutas de una habitación?',
                [
                  'Que sea silenciosa',
                  'Que sea confortable',
                  'Que esté limpia y ordenada'
                ],
              ),
              _buildQuestion(
                33,
                '¿Qué es más sexy para ti?',
                [
                  'Una iluminación tenue',
                  'El perfume',
                  'Cierto tipo de música'
                ],
              ),
              _buildQuestion(
                34,
                '¿A qué tipo de espectáculo preferirías asistir?',
                [
                  'A un concierto de música',
                  'A un espectáculo de magia',
                  'A una muestra gastronómica'
                ],
              ),
              _buildQuestion(
                35,
                '¿Qué te atrae más de una persona?',
                [
                  'Su trato y forma de ser',
                  'Su aspecto físico',
                  'Su conversación'
                ],
              ),
              _buildQuestion(
                36,
                'Cuando vas de compras, ¿en dónde pasas mucho tiempo?',
                [
                  'En una librería',
                  'En una perfumería',
                  'En una tienda de discos'
                ],
              ),
              _buildQuestion(
                37,
                '¿Cuál es tu idea de una noche romántica?',
                [
                  'A la luz de las velas',
                  'Con música romántica',
                  'Bailando tranquilamente'
                ],
              ),
              _buildQuestion(
                38,
                '¿Qué es lo que más disfrutas de viajar?',
                [
                  'Conocer personas y hacer nuevos amigos',
                  'Conocer lugares nuevos',
                  'Aprender sobre otras costumbres'
                ],
              ),
              _buildQuestion(
                39,
                'Cuando estás en la ciudad, ¿qué es lo que más echas de menos del campo?',
                [
                  'El aire limpio y refrescante',
                  'Los paisajes',
                  'La tranquilidad'
                ],
              ),
              _buildQuestion(
                  40,
                  'Si te ofrecieran uno de los siguientes empleos, ¿cuál escogerías?',
                  [
                    'Director de una revista',
                    'Director de una estación de radio',
                    'Director de una empresa de entretenimiento'
                  ]),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                ),
                onPressed: _submitQuiz,
                child: const Text(
                  'Enviar respuestas',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestion(int index, String questionText, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pregunta $index: $questionText',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ...options.map(
          (option) => RadioListTile<int>(
            title: Text(option),
            value: options.indexOf(option),
            groupValue: _respuestas[index - 1],
            onChanged: (value) {
              setState(() {
                _respuestas[index - 1] = value;
              });
            },
          ),
        ),
        const Divider(),
      ],
    );
  }

  void _submitQuiz() {
    // Resetear los conteos
    conteoA = 0;
    conteoB = 0;
    conteoC = 0;
    visual = 0;
    auditivo = 0;
    cinestesico = 0;

    // Iterar sobre las respuestas seleccionadas y asignar puntos
    for (int i = 0; i < _respuestas.length; i++) {
      final respuestaSeleccionada = _respuestas[i];
      switch (i + 1) {
        case 1:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 2:
          asignarPuntos('A', 'C', 'B', respuestaSeleccionada);
          break;
        case 3:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 4:
          asignarPuntos('C', 'B', 'A', respuestaSeleccionada);
          break;
        case 5:
          asignarPuntos('C', 'B', 'A', respuestaSeleccionada);
          break;
        case 6:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 7:
          asignarPuntos('A', 'B', 'C', respuestaSeleccionada);
          break;
        case 8:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 9:
          asignarPuntos('A', 'C', 'B', respuestaSeleccionada);
          break;
        case 10:
          asignarPuntos('C', 'B', 'A', respuestaSeleccionada);
          break;
        case 11:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 12:
          asignarPuntos('B', 'C', 'A', respuestaSeleccionada);
          break;
        case 13:
          asignarPuntos('C', 'A', 'B', respuestaSeleccionada);
          break;
        case 14:
          asignarPuntos('A', 'B', 'C', respuestaSeleccionada);
          break;
        case 15:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 16:
          asignarPuntos('A', 'C', 'B', respuestaSeleccionada);
          break;
        case 17:
          asignarPuntos('C', 'B', 'A', respuestaSeleccionada);
          break;
        case 18:
          asignarPuntos('C', 'A', 'B', respuestaSeleccionada);
          break;
        case 19:
          asignarPuntos('A', 'B', 'C', respuestaSeleccionada);
          break;
        case 20:
          asignarPuntos('A', 'C', 'B', respuestaSeleccionada);
          break;
        case 21:
          asignarPuntos('B', 'C', 'A', respuestaSeleccionada);
          break;
        case 22:
          asignarPuntos('C', 'A', 'B', respuestaSeleccionada);
          break;
        case 23:
          asignarPuntos('A', 'B', 'C', respuestaSeleccionada);
          break;
        case 24:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 25:
          asignarPuntos('A', 'B', 'C', respuestaSeleccionada);
          break;
        case 26:
          asignarPuntos('C', 'B', 'A', respuestaSeleccionada);
          break;
        case 27:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 28:
          asignarPuntos('C', 'B', 'A', respuestaSeleccionada);
          break;
        case 29:
          asignarPuntos('B', 'C', 'A', respuestaSeleccionada);
          break;
        case 30:
          asignarPuntos('C', 'B', 'A', respuestaSeleccionada);
          break;
        case 31:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 32:
          asignarPuntos('C', 'A', 'B', respuestaSeleccionada);
          break;
        case 33:
          asignarPuntos('A', 'C', 'B', respuestaSeleccionada);
          break;
        case 34:
          asignarPuntos('B', 'A', 'C', respuestaSeleccionada);
          break;
        case 35:
          asignarPuntos('B', 'C', 'A', respuestaSeleccionada);
          break;
        case 36:
          asignarPuntos('A', 'C', 'B', respuestaSeleccionada);
          break;
        case 37:
          asignarPuntos('A', 'B', 'C', respuestaSeleccionada);
          break;
        case 38:
          asignarPuntos('B', 'C', 'A', respuestaSeleccionada);
          break;
        case 39:
          asignarPuntos('B', 'C', 'A', respuestaSeleccionada);
          break;
        case 40:
          asignarPuntos('C', 'A', 'B', respuestaSeleccionada);
          break;
      }
    }

    // Determinar el tipo de aprendizaje
    String tipoDeAprendizaje;
    if (visual > auditivo && visual > cinestesico) {
      tipoDeAprendizaje = 'Visual';
    } else if (auditivo > visual && auditivo > cinestesico) {
      tipoDeAprendizaje = 'Auditivo';
    } else if (cinestesico > visual && cinestesico > auditivo) {
      tipoDeAprendizaje = 'Cinestésico';
    } else {
      tipoDeAprendizaje = 'Mixto';
    }

    // Mostrar el resultado en un AlertDialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¡Gracias por participar!'),
          content: Text('Tu tipo de aprendizaje es: $tipoDeAprendizaje'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  void asignarPuntos(String visualInciso, String auditivoInciso,
      String cinestesicoInciso, int? respuestaSeleccionada) {
    if (respuestaSeleccionada == 0) {
      conteoA++;
    } else if (respuestaSeleccionada == 1) {
      conteoB++;
    } else if (respuestaSeleccionada == 2) {
      conteoC++;
    }

    if (respuestaSeleccionada ==
        visualInciso.codeUnitAt(0) - 'A'.codeUnitAt(0)) {
      visual++;
    } else if (respuestaSeleccionada ==
        auditivoInciso.codeUnitAt(0) - 'A'.codeUnitAt(0)) {
      auditivo++;
    } else if (respuestaSeleccionada ==
        cinestesicoInciso.codeUnitAt(0) - 'A'.codeUnitAt(0)) {
      cinestesico++;
    }
  }
}
