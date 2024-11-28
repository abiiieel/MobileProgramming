import 'package:flutter/material.dart';
import 'create_task_page.dart';

class ListJadwalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Jadwal', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.yellow,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Tambahkan aksi menu
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian Header
          Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nov, 2024',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                // Baris tanggal
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDateItem('17', 'Min', isSelected: true),
                    _buildDateItem('18', 'Sen'),
                    _buildDateItem('19', 'Sel'),
                    _buildDateItem('20', 'Rab'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Daftar Tugas
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daftar Tugas',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16),
                    Expanded(
                      child: ListView(
                        children: [
                          _buildTaskCard(
                              'UTS Mobile Programming', '10:00 - 14:00'),
                          SizedBox(height: 8),
                          _buildTaskCard('Ngerjakan Tugas', '18:00'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[700],
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateTaskPage()),
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Jadwal'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifikasi'),
        ],
        onTap: (index) {
          // Tambahkan navigasi jika diperlukan
        },
      ),
    );
  }

  Widget _buildDateItem(String day, String weekday, {bool isSelected = false}) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.transparent,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(8.0),
          child: Text(
            day,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.yellow : Colors.black,
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(
          weekday,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }

  Widget _buildTaskCard(String title, String time) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 2,
      child: ListTile(
        leading: Icon(Icons.assignment, color: Colors.yellow[700]),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        subtitle: Text(time),
        trailing: Icon(Icons.more_vert, color: Colors.black),
      ),
    );
  }
}
