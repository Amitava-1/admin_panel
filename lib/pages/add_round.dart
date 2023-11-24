import 'package:flutter/material.dart';
class AddRound extends StatefulWidget {
  const AddRound({super.key});

  @override
  State<AddRound> createState() => _AddRoundState();
}

class _AddRoundState extends State<AddRound> {
  var RoundName = TextEditingController();
  var RoundNumber = TextEditingController();
  var PlusMark = TextEditingController();
  var MinusMark = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4eff5),
      body: Center(
        child: Container(
        width: 400,
        height: 550,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Add Round",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xff424242)),
            ),
            Container(
              height: 35,
            ),
            TextField(
              controller: RoundName,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Round Name',
              ),
            ),
            Container(
              height: 20,
            ),
            TextField(
              controller: RoundNumber,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Round Number',
              ),
            ),
            Container(
              height: 20,
            ),
            TextField(
              controller: PlusMark,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Positive Marking',
              ),
            ),
            Container(
              height: 20,
            ),
            TextField(
              controller: MinusMark,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Negative Marking',
              ),
            ),
            Container(
              height: 40,
            ),
            ElevatedButton(
              onPressed: (){
                String Rname = RoundName.text;
                String Rnumber = RoundNumber.text;
                String Pmark = PlusMark.text;
                String Nmark = MinusMark.text;

                print("Round name: $Rname, Round number: $Rnumber, Positive marking: $Pmark, Negative marking: $Nmark");

              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(500, 58),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Submit'),
            )
          ],
        ),
      ),
      ),
    );
  }
}