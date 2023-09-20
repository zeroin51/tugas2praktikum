import 'package:tugas_2/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  TextEditingController _namaController = TextEditingController();
  TextEditingController _nimController = TextEditingController();
  TextEditingController _tahunController = TextEditingController();

  Widget inputText(TextEditingController textcontroller, String name ){
    return
      Padding(
        padding: EdgeInsets.all(5),
        child: TextField(
            controller: textcontroller,
            decoration: InputDecoration(
              labelText: name,
            )
        )
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data"),
      ),
      body: Column(
        children: [
          inputText(_namaController, "Nama"),
          inputText(_nimController, "Nim"),
          inputText(_tahunController, "Tahun Lahir"),
          ElevatedButton(
            child: Text("Simpan"),
            onPressed: (){
              String nama = _namaController.text;
              String nim = _nimController.text;
              int tahun= int.parse(_tahunController.text);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TampilData(
                    nama: nama,
                    nim: nim,
                    tahun: tahun,
                  )
              ));
            },
          )

        ],
      )
    );
  }
}