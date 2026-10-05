import 'package:flutter/material.dart';
import 'widgets/bloco_estatistica.dart';

void main() {
  runApp(const MeuLayoutApp());
}

class MeuLayoutApp extends StatelessWidget {
  const MeuLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPDM - Layout Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TelaDashboard(),
    );
  }
}

class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Dashboard de Observacoes'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // EXERCÍCIO 02: Alinhamento centralizado
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Resumo das Observacoes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            
            // EXERCÍCIO 01 e 07: 3 Cards na Row usando o Widget BlocoEstatistica
            Row(
              children: [
                Expanded(
                  child: BlocoEstatistica(
                    icone: Icons.flutter_dash,
                    valor: '124',
                    legenda: 'Aves Vistas',
                    corFundo: Colors.teal.shade100,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: BlocoEstatistica(
                    icone: Icons.place,
                    valor: '18',
                    legenda: 'Locais Visitados',
                    corFundo: Colors.teal.shade50,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: BlocoEstatistica(
                    icone: Icons.camera_alt,
                    valor: '45',
                    legenda: 'Fotos',
                    corFundo: Colors.teal.shade100,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),

            const Text(
              'Destaque da Semana',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),

            // EXERCÍCIO 05 e 06: Card com Elevação + Stack com 2 Selos
            Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        const Icon(Icons.star, size: 48, color: Colors.amber),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Gaviao-Real',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Avistado no Parque Central',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Selo Superior (Raro)
                Positioned(
                  top: -8,
                  right: -8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Raro',
                      style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                // Selo Inferior Esquerdo (Confirmado)
                Positioned(
                  bottom: -8,
                  left: -8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Confirmado',
                      style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),

            // EXERCÍCIO 03: Seção "Últimos Registros"
            const Text(
              'Ultimos Registros',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.list_alt, color: Colors.teal),
                      SizedBox(width: 12),
                      Text('Registro de Campo #042', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, size: 18),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
