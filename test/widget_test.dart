import 'package:flutter/material.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  // Variables para almacenar las respuestas seleccionadas
  final List<int?> _respuestas = List.filled(40, null);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Estilos de Aprendizaje'),
        ),
        body: Padding(
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
                onPressed: _submitQuiz,
                child: const Text('Enviar respuestas'),
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
    // Aquí puedes hacer lo que quieras con las respuestas almacenadas en _respuestas
    print('Respuestas seleccionadas: $_respuestas');
  }
}
