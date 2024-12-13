import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SportTraining',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        fontFamily: 'Lexend',
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('SportTraining', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.emoji_events,
              color: Colors.white,
              size: 50,
            ),
            const SizedBox(height: 16),
            const Text(
              'Bienvenido!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[850],
                hintText: 'Usuario',
                hintStyle: const TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[850],
                hintText: 'Contraseña',
                hintStyle: const TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Radio(
                      value: true,
                      groupValue: true,
                      onChanged: (value) {},
                      activeColor: Colors.blue,
                    ),
                    const Text(
                      'Recordarme',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Olvidaste contraseña?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Login', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Nuevo usuario?', style: TextStyle(color: Colors.white)),
                TextButton(
                  onPressed: () {},
                  child: const Text('Registrarse', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Expanded(child: Divider(color: Colors.white54)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('or', style: TextStyle(color: Colors.white54)),
                ),
                Expanded(child: Divider(color: Colors.white54)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Acceder usando otros servicios',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 0), // Espacio entre los íconos
            Icon(Icons.notifications),
            Icon(Icons.emoji_events),
            Icon(Icons.account_circle),
          ],
        ),
      ),
      drawer: const MenuDrawer(), // Este es el menú desplegable
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Usuario Jhon'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                color: Colors.grey[850],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                      child: Image.asset(
                        'assets/muscle_banner.jpg',
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Se el próximo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CreateProgramPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: const Text('+ Programa'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildOption(context, Icons.sports, 'Deportes', const SportsPage()),
                  _buildOption(context, Icons.location_city, 'Centros', const CentersPage()),
                  _buildOption(context, Icons.directions_walk, 'Actividades', const ActivitiesPage()),
                  _buildOption(context, Icons.help, 'Ayuda', const SupportPage()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: CircularProgressIndicator(
                          value: 0.75,
                          strokeWidth: 12,
                          backgroundColor: Colors.grey[800],
                          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                      ),
                      const Text(
                        '10230',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('Compartir'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(BuildContext context, IconData icon, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Column(
        children: [
          Container(
            width: 60,  // Establece el ancho del rectángulo
            height: 60, // Establece la altura del rectángulo
            decoration: BoxDecoration(
              color: Colors.grey[800],  // Color de fondo
              borderRadius: BorderRadius.circular(12),  // Bordes redondeados
            ),
            child: Icon(
              icon,
              color: Colors.blue,
              size: 30,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class ProgramDetailPage extends StatelessWidget {
  const ProgramDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programa personalizado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(  // Permite que la página ocupe más de la altura de la pantalla
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Usuario y Monitor Asignado
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/chris.jpg'),  // Cambia esta ruta por una foto de tu elección
                  ),
                  const SizedBox(width: 10),
                  Text('Chris Bumstead', style: Theme.of(context).textTheme.titleLarge),
                  const Spacer(),
                  Icon(Icons.star, color: Colors.yellow),
                  Text('4.9/5', style: TextStyle(color: Colors.yellow)),
                ],
              ),
              const SizedBox(height: 20),

              // Planificación con el botón "+"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Planificación',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add, color: Colors.blue), // Símbolo "+"
                    onPressed: () {
                      // Lógica para agregar una nueva actividad (si la necesitas)
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),

              _buildPlanningRow('Martes 11/01/2023', 'Actividad NS44556', 'Reserva N120'),
              _buildPlanningRow('Viernes 14/01/2023', 'Actividad NS45678', 'No disponible'),
              _buildPlanningRow('Lunes 17/01/2023', 'Actividad NS55567', 'Reserva N1020'),

              const SizedBox(height: 20),

              // Resumen
              Text('Resumen'),
              const SizedBox(height: 10),
              _buildSummaryRow('Deporte', 'Fisiculturismo'),
              _buildSummaryRow('Franja Horaria', 'Mañanas'),
              _buildSummaryRow('Fecha de Inicio', '11/01/2023'),
              _buildSummaryRow('Duración', '3 días'),
              _buildSummaryRow('Centro Deportivo', 'CP. El Romeral'),

              const SizedBox(height: 20),

              // Precio
              Text('Precio'),
              const SizedBox(height: 10),
              _buildPriceRow('Coste del programa', '\$4,000.00'),
              _buildPriceRow('Coste calculado (+IVA)', '\$4,231.40'),

              const SizedBox(height: 20),

              // Acceder a pago button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PaymentPage()),
                    );
                  },
                  child: const Text('Acceder a pago'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to create the planning rows
  Widget _buildPlanningRow(String date, String activity, String reservation) {
    return Card(
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Reduce el padding general de la tarjeta
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fecha del día
            Text(date, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),

            const SizedBox(height: 5),

            // Actividad
            Row(
              children: [
                const Icon(Icons.fitness_center, color: Colors.yellow), // Icono para actividad
                const SizedBox(width: 10),
                Text(activity, style: const TextStyle(color: Colors.white)),
              ],
            ),

            const SizedBox(height: 5),

            // Reserva
            Row(
              children: [
                const Icon(Icons.confirmation_number, color: Colors.yellow), // Icono para número de reserva
                const SizedBox(width: 10),
                Text(reservation, style: const TextStyle(color: Colors.white)),
              ],
            ),

            const SizedBox(height: 10),

            // Botón de eliminar con el icono de papelera dentro de un cuadrado más pequeño
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 35,  // Establece un tamaño más pequeño para el recuadro
                height: 35, // Establece un tamaño más pequeño para el recuadro
                decoration: BoxDecoration(
                  color: Colors.red, // Color de fondo del botón
                  borderRadius: BorderRadius.circular(8), // Bordes redondeados
                ),
                child: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.white), // Icono de papelera
                  iconSize: 18, // Ajusta el tamaño del icono
                  onPressed: () {
                    // Lógica para eliminar la actividad
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  // Helper function to create the summary rows
  Widget _buildSummaryRow(String title, String value) {
    return Row(
      children: [
        Text('$title: ', style: const TextStyle(color: Colors.white)),
        Text(value, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  // Helper function to create the price rows
  Widget _buildPriceRow(String title, String value) {
    return Row(
      children: [
        Text('$title: ', style: const TextStyle(color: Colors.white)),
        Text(value, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información de pago'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Información de usuario
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/219983.png'), // Foto del usuario
                  ),
                  const SizedBox(width: 10),
                  Text('Usuario Jhon', style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
              const SizedBox(height: 20),

              // Método de pago
              Text('Método de pago', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),

              // Tarjeta de crédito guardada
              Row(
                children: [
                  Radio<String>(
                    value: 'Tarjeta',
                    groupValue: 'selectedPaymentMethod',
                    onChanged: (String? value) {},
                  ),
                  const Text('VISA/Mastercard', style: TextStyle(color: Colors.white)),
                ],
              ),
              Image.asset(
                'assets/credit_card.png', // Usa tu imagen de tarjeta
                width: double.infinity,
                height: 240,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),

              // Tarjeta guardada
              DropdownButton<String>(
                value: 'Tarjeta Guardada N2',
                onChanged: (String? newValue) {},
                items: <String>['Tarjeta Guardada N1', 'Tarjeta Guardada N2', 'Tarjeta Guardada N3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              const SizedBox(height: 20),

              // PayPal
              Row(
                children: [
                  Radio<String>(
                    value: 'Paypal',
                    groupValue: 'selectedPaymentMethod',
                    onChanged: (String? value) {},
                  ),
                  const Text('Paypal', style: TextStyle(color: Colors.white)),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/paypal_logo.png', // Usar logo de PayPal
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Resumen de precio
              Text('Precio', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              _buildPriceRow('Coste del programa', '\$4,000.00'),
              _buildPriceRow('Coste calculado (+IVA)', '\$4,231.40'),
              _buildPriceRow('Primer pago (80%)', '\$3,384.30'),

              const SizedBox(height: 20),

              // Botón para realizar pago
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para realizar el pago
                  },
                  child: const Text('Realizar pago'),
                ),
              ),

              // Botón de volver
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Volver', style: TextStyle(color: Colors.blue)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to display price rows
  Widget _buildPriceRow(String title, String value) {
    return Row(
      children: [
        Text(title, style: const TextStyle(color: Colors.white)),
        const Spacer(),
        Text(value, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}


class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey[900], // Color de fondo del menú
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue, // Color del encabezado del menú
            ),
            child: Text(
              'SportTraining',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text('Inicio', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.fitness_center, color: Colors.white),
            title: const Text('Crear programa', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.sports, color: Colors.white),
            title: const Text('Deportes', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.location_city, color: Colors.white),
            title: const Text('Centros', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.directions_walk, color: Colors.white),
            title: const Text('Actividades', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help, color: Colors.white),
            title: const Text('Soporte', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          const Divider(color: Colors.white54),
          ListTile(
            leading: const Icon(Icons.account_circle, color: Colors.white),
            title: const Text('Ajustes de Cuenta', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.photo, color: Colors.white),
            title: const Text('Foto de perfil', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.discount, color: Colors.white),
            title: const Text('Descuentos', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.upgrade, color: Colors.white),
            title: const Text('Upgrade', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: const Text('Datos personales', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          const Divider(color: Colors.white54),
          ListTile(
            leading: const Icon(Icons.dashboard, color: Colors.white),
            title: const Text('Panel de Control', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.assignment_ind, color: Colors.white),
            title: const Text('Panel asistencias', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context); // Cierra el Drawer antes de navegar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AssistancePanelPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title: const Text('Ajustes', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CreateProgramPage extends StatelessWidget {
  const CreateProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Programa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info Section
            Text('Usuario Jhon', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 20),

            // Date Picker
            Text('Fecha de Inicio'),
            TextField(
              decoration: InputDecoration(
                hintText: '27/05/2023',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () async {
                    // Show Date Picker
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (selectedDate != null) {
                      // Update date in TextField
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Dropdown for "Centro Deportivo"
            Text('Centro Deportivo'),
            DropdownButton<String>(
              isExpanded: true,
              hint: const Text('CP. El Romeral'),
              items: [
                DropdownMenuItem<String>(child: Text('CP. El Romeral'), value: 'CP. El Romeral'),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),

            // Dropdown for "Deporte"
            Text('Deporte'),
            DropdownButton<String>(
              isExpanded: true,
              hint: const Text('Fisiculturismo'),
              items: [
                DropdownMenuItem<String>(child: Text('Fisiculturismo'), value: 'Fisiculturismo'),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),

            // Dropdown for "Numero de dias"
            Text('Número de días'),
            DropdownButton<int>(
              isExpanded: true,
              hint: const Text('3'),
              items: const [
                DropdownMenuItem<int>(child: Text('3'), value: 3),
                DropdownMenuItem<int>(child: Text('5'), value: 5),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),

            // Dropdown for "Franja Horaria"
            Text('Franja Horaria'),
            DropdownButton<String>(
              isExpanded: true,
              hint: const Text('Mañanas'),
              items: const [
                DropdownMenuItem<String>(child: Text('Mañanas'), value: 'Mañanas'),
                DropdownMenuItem<String>(child: Text('Tardes'), value: 'Tardes'),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),

            // Create Program Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProgramDetailPage()),
                  );
                },
                child: const Text('Crear programa'),
              ),
            ),
            const SizedBox(height: 20),

            // Help section
            Center(child: Text('¿Necesitas ayuda?')),
            const SizedBox(height: 20),

            // Terms and conditions
            Center(
              child: Text(
                '@Al hacer uso de esta herramienta aceptas los términos y condiciones del sitio',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AssistancePanelPage extends StatelessWidget {
  const AssistancePanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitor Cristian'),
        backgroundColor: Colors.blueAccent, // Ajusta el color como en la imagen
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título de la actividad
            const Text(
              'Actividades activas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),

            // Lista de actividades
            _buildActivityCard(context, 'Actividad N233467', 'Grupo 2'),
            const SizedBox(height: 16),
            _buildActivityCard(context, 'Actividad N453467', 'Grupo 1'),
            const SizedBox(height: 16),
            _buildActivityCard(context, 'Actividad N123467', 'Grupo 9'),

            const SizedBox(height: 20),

            // Recordatorio
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Recuerda que tienes en tu correo los detalles de cada actividad deportiva',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                ),
              ),
            ),

            // Alerta
            const Row(
              children: [
                Icon(Icons.warning, color: Colors.yellow),
                SizedBox(width: 8),
                Text(
                  'Si tienes algún problema contacta con un administrador',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityCard(BuildContext context, String activityName, String group) {
    return Card(
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Columna con la actividad y el grupo
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activityName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    group,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            // Botón de Confirmar asistencias
            ElevatedButton(
              onPressed: () {
                // Uso correcto del context
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfirmAttendancePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Similar al botón de la imagen
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Confirmar asistencias'),
            ),
          ],
        ),
      ),
    );
  }
}


class ConfirmAttendancePage extends StatefulWidget {
  const ConfirmAttendancePage({super.key});

  @override
  _ConfirmAttendancePageState createState() => _ConfirmAttendancePageState();
}

class _ConfirmAttendancePageState extends State<ConfirmAttendancePage> {
  // Lista de participantes
  final List<Map<String, String>> participants = [
    {"name": "Jose Pedro Gutiérrez Mármol", "id": "1"},
    {"name": "Félix Rodríguez de la Fuente", "id": "2"},
    {"name": "Riquelme Sanchez Garcia", "id": "3"},
    {"name": "Riquelme Sanchez Garcia", "id": "4"},
    {"name": "Riquelme Sanchez Garcia", "id": "5"},
    {"name": "Riquelme Sanchez Garcia", "id": "6"},
    {"name": "Riquelme Sanchez Garcia", "id": "7"},
  ];

  // Map para almacenar el estado de asistencia de cada participante
  final Map<String, bool> attendance = {};

  // Variable para contar los miembros seleccionados
  int selectedMembers = 0;

  @override
  void initState() {
    super.initState();
    // Inicializamos todos los miembros con asistencia en "no"
    for (var participant in participants) {
      attendance[participant["id"]!] = false;
    }
  }

  // Método para actualizar la asistencia de los miembros
  void updateAttendance(String id, bool value) {
    setState(() {
      attendance[id] = value;
      selectedMembers = attendance.values.where((e) => e).length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestor del Romeral'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título de la actividad
            const Text(
              'Actividad N233467',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'G23345',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            const SizedBox(height: 20),

            // Lista de miembros y su asistencia
            Expanded(
              child: ListView.builder(
                itemCount: participants.length,
                itemBuilder: (context, index) {
                  final participant = participants[index];
                  final id = participant["id"]!;
                  return Card(
                    color: Colors.grey[850],
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                participant["name"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio<bool>(
                                value: true,
                                groupValue: attendance[id],
                                onChanged: (value) {
                                  updateAttendance(id, value!);
                                },
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Contador de miembros seleccionados
            Text(
              'Miembros Seleccionados: $selectedMembers/${participants.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Botones de Confirmar y Cancelar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción para cancelar
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Color del botón Cancelar
                  ),
                  child: const Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Acción para confirmar la asistencia
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Asistencias Confirmada'),
                      ),
                    );

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Color del botón Confirmar
                  ),
                  child: const Text('Confirmar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class SportsPage extends StatelessWidget {
  const SportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Deportes')),
      body: const Center(child: Text('Página de deportes.')),
    );
  }
}

class CentersPage extends StatelessWidget {
  const CentersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Centros')),
      body: const Center(child: Text('Página de centros.')),
    );
  }
}

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Actividades')),
      body: const Center(child: Text('Página de actividades.')),
    );
  }
}

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Soporte'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título

            const SizedBox(height: 20),

            // Sección de acceso a guías
            const Text(
              'Acceso a nuestras guías',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildAccordionItem('Cómo personalizar mi programa'),
            _buildAccordionItem('Guía de planificaciones de programas'),
            _buildAccordionItem('Actividades para mi'),
            const SizedBox(height: 20),

            // Sección de preguntas frecuentes
            const Text(
              'Preguntas más frecuentes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildAccordionItem('Qué métodos de pago existen'),
            _buildAccordionItem('¿Hay límite de programas?'),
            const SizedBox(height: 20),

            // Formulario de contacto
            const Text(
              'contacto',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildTextField('Asunto'),
            const SizedBox(height: 10),
            _buildTextField('Descripción'),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                ),
                child: const Text(
                  'Enviar solicitud',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Información de contacto
            const Center(
              child: Text(
                '¿Necesitas contactar con nosotros?',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                '968 886 686',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccordionItem(String title) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[850],
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
