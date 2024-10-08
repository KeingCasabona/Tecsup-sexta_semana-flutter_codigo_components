import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String textGeneral = '';
  final TextEditingController _myController =
      TextEditingController(text: 'Texto por defecto...');
  //final TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Input Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
                maxLines: 1,
                //textAlign: TextAlign.start, //POR DEFECTO AL INICIO
                decoration: InputDecoration(
                  hintText: 'Direccion',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                  ),
                  label: Text('Direccion Label'),
                  icon: Icon(Icons.location_on),
                  suffixIcon: Icon(Icons.check_circle_outline),
                  prefixIcon: Icon(Icons.star),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  //hintText: 'Buscar producto',
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  label: Text('Buscar producto label...'),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(4, 4),
                      blurRadius: 12,
                    )
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar producto...',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Container(
                      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: isInvisible,
                //obscuringCharacter: 'X',
                decoration: InputDecoration(
                    label: Text('Contrasena'),
                    suffixIcon: IconButton(
                      icon: isInvisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.remove_red_eye),
                      onPressed: () {
                        setState(() {
                          isInvisible = !isInvisible;
                        });
                      },
                    )),
              ),
              SizedBox(height: 20),
              TextField(
                style: GoogleFonts.poppins(),
                onTap: () {},
                onChanged: (value) {
                  textGeneral = value;
                },
                maxLength: 20,
                decoration: InputDecoration(
                    //counterText: '',
                    ),
                keyboardType: TextInputType.text,
                cursorColor: const Color.fromARGB(255, 255, 64, 210),
                readOnly: false,
                onSubmitted: (value) {
                  print(value);
                },
                controller: _myController,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Obtener el valor de onChange'),
                onPressed: () {
                  print(_myController.text);
                },
              ),
              ElevatedButton(
                child: Text('Reset'),
                onPressed: () {
                  //_myController.text = '';
                  _myController.clear();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
