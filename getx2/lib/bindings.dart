import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  var name = ''.obs; //Reactive variable for name
  var email = ''.obs; //Reactive variable for name

  //update nama
  void updateName(String newName) {
    name.value = newName;
  }

  //update email
  void updateEmail(String newEmail) {
    email.value = newEmail;
  }

  //form validasi
  bool validateForm() {
    return name.isNotEmpty && email.isNotEmpty;
  }
}

//Bindings
class FormBinding extends Bindings {
  @override
  void dependencies() {
    //mengambil formcontrool ke getX dependency
    Get.put(FormController());
  }
}

//UI Binding
class FormPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FormController>();

    return Scaffold(
      appBar: AppBar(title: Text("Form pengguna dengan GetX"),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField('Nama', controller.updateName),
            _buildTextField('Email', controller.updateEmail),
            SizedBox(height: 20,),
            Obx(() => Text(
              "Nama : ${controller.name}, Email : ${controller.email}",
              style: TextStyle(fontSize: 16),
            )),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              controller.validateForm()
                  ? Get.snackbar('Sukses', "Formulir berhasil dikirim")
                  : Get.snackbar('Gagal', "Nama dan Email harus diisi");
            }, child: Text("Kirim"))
          ],
        ),),
    );
  }
}

Widget _buildTextField(String label, Function(String) onChanged) {
  return Padding(padding: const EdgeInsets.all(10),
    child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(labelText: label),
    ),
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Bindings form Example",
      initialRoute: "/form",
      getPages: [
        GetPage(
            name: "/form",
            page: () => FormPage(),
            binding: FormBinding()
        )
      ],
    );
  }
}
