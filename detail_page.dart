// detail_page.dart
import 'package:flutter/material.dart';
import 'vehicle-data.dart';

class DetailPage extends StatelessWidget {
  final Vehicle vehicle;
  const DetailPage({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vehicle.name), backgroundColor: Colors.orange),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon kendaraan di tengah
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.orange.shade100,
                child: Icon(
                  Icons.directions_car, // ikon kendaraan
                  size: 60,
                  color: Colors.orange.shade700,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Nama kendaraan
            Center(
              child: Text(
                vehicle.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                vehicle.type,
                style: TextStyle(fontSize: 16, color: Colors.orange.shade700),
              ),
            ),

            const Divider(height: 30, thickness: 1),

            // Deskripsi & detail spesifikasi
            Text(
              "Deskripsi",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange.shade700,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              vehicle.description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.settings, size: 20, color: Colors.orange),
                const SizedBox(width: 8),
                Text(
                  "Mesin: ${vehicle.engine}",
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(
                  Icons.local_gas_station,
                  size: 20,
                  color: Colors.orange,
                ),
                const SizedBox(width: 8),
                Text(
                  "Bahan Bakar: ${vehicle.fuelType}",
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.attach_money, size: 20, color: Colors.orange),
                const SizedBox(width: 8),
                Text(
                  "Harga: ${vehicle.price}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
