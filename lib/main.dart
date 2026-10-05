// LINHA 1: Cards Lado a Lado usando Expanded (Exercício 01)
Row(
  children: [
    Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.teal.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: const [
            Icon(Icons.flutter_dash, size: 36, color: Colors.teal),
            SizedBox(height: 8),
            Text('124', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Aves Vistas', style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    ),
    const SizedBox(width: 12.0),
    Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.teal.shade50,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: const [
            Icon(Icons.place, size: 36, color: Colors.teal),
            SizedBox(height: 8),
            Text('18', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Locais Visitados', style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    ),
    const SizedBox(width: 12.0),
    // Terceiro Card (Novo)
    Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.teal.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: const [
            Icon(Icons.camera_alt, size: 36, color: Colors.teal),
            SizedBox(height: 8),
            Text('45', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Fotos', style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    ),
  ],
)
