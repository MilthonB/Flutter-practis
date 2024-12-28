import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


const supabaseUrl = 'https://geztfygkimhwyrvsbxer.supabase.co'; 
// const supabaseKeyProd = String.fromEnvironment('SUPABASE_KEY');
String supabaseKeyDev =  dotenv.env['ANONKEY'] ?? '';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseKeyDev,
    authOptions: const FlutterAuthClientOptions(
      authFlowType: AuthFlowType.pkce
    ),
    realtimeClientOptions: const RealtimeClientOptions(
      logLevel: RealtimeLogLevel.info
    ),
    storageOptions: const StorageClientOptions(
      retryAttempts: 10
    ),
    
  );

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  final textnombre = TextEditingController();
  final textapellido = TextEditingController();
  final textedad = TextEditingController();
  final textcarrera = TextEditingController();

  late Stream<List<DataUsuario>> _stream;




  Stream<List<DataUsuario>> getDataSupaBase(){
    final supa = Supabase.instance.client;
    Stream<List<DataUsuario>> data = supa
    .from('alumnos')
    .stream(primaryKey: ['id'])
    .map((data)=> data.map((alumno)=> DataUsuario.fromJson(alumno)).toList());

  return data;
    // final List<DataUsuario> dataAlumno = data.map((alumnos) => DataUsuario.fromJson(alumnos)).toList();
    // return dataAlumno;
  }

  Stream<List<DataUsuario>> getDataSupaBase1() { 
    final supa = Supabase.instance.client; 
    return supa
      .from('alumnos')
      .stream(primaryKey: ['id'])
      .map((data) => data.map((alumno) => DataUsuario.fromJson(alumno)).toList()); }

  Future insertDataSupabase( String nombre, String apellido, String  carrera, int edad ) async {
    final supa = Supabase.instance.client;

    await supa.from('alumnos').insert(
      {
        'nombre': nombre,
        'apellido': apellido,
        'edad': edad,
        'carrera': carrera
      }
    );
  }

  Future deleteDataSupabase(int id ) async {
    final supa = Supabase.instance.client;

    await supa.from('alumnos').delete().eq('id', id);
  }

  @override
  void initState() {
    // TODO: implement initState
      _stream = getDataSupaBase();
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('CRUD', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          leading: const Icon(Icons.menu, color: Colors.white,),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Badge(
                label: Text('3'),
                backgroundColor: Colors.blueGrey[700],
                child: const Icon(Icons.notifications, color: Colors.white,)
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text('CRUD - TEST', style: TextStyle(fontSize: 35),),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  label: Text('Nombre'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                controller: textnombre,
              ),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  label: Text('Apellido'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                controller: textapellido,
              ),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  label: Text('Edad'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                controller: textedad,
              ),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  label: Text('Carrera'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                controller: textcarrera,
              ),
              const SizedBox(height: 10,),
              Expanded(
                child: StreamBuilder<List<DataUsuario>>(
                  stream: _stream,
                  initialData: [], 
                  builder: (context, snapshot) {
                    final datas = snapshot.data;
                    return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    String nombre = datas![index].nombre;
                    int id = datas[index].id;
                    String apellido = datas[index].nombre;
                    int edad = datas[index].edad;
                    String carrera = datas[index].carrera;
                    return ListTile(
                      leading: const Icon(Icons.person, color: Colors.teal,),
                      title: Text('Nombre: $nombre Apellido: $apellido'),
                      subtitle: Text('Edad: $edad Carrera: $carrera'),
                      trailing: GestureDetector(
                        onTap: () {
                          deleteDataSupabase(id);
                        },
                        child: const Icon(Icons.delete, color: Colors.red,)
                      ),
                    );
                  },
                );
                  },
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {

                        // print(textapellido.text);
                        // getDataSupaBase();
                        print('Hola mundo');
                        insertDataSupabase(
                          textnombre.text, textapellido.text,  textcarrera.text, int.parse(textedad.text),
                        );
                      
                    }, child: Text('Crear', style: TextStyle(color: Colors.white),)),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {
                    }, child: Text('Eliminar', style: TextStyle(color: Colors.white),)),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {
                      
                    }, child: Text('Actualizar', style: TextStyle(color: Colors.white),)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



class DataUsuario{
  final int id;
  final String nombre;
  final String apellido;
  final int edad;
  final String carrera;

  DataUsuario(
    {
    required this.id,
    required this.nombre, 
    required this.apellido, 
    required this.edad, 
    required this.carrera
    }){}

    factory DataUsuario.fromJson(Map<String, dynamic> json) => DataUsuario(
      id: json['id'],
      nombre: json['nombre'], 
      apellido:json['apellido'], 
      edad: json['edad'], 
      carrera:json['carrera']
    );

}