import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: PageOne(),
    ),
  );
}


class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 1"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Czerwony"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(Colors.red),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("Zielony"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(Colors.green),
                  ),
                ).then((value) => print(value));
              },
            ),
            TextButton(
              child: Text("Niebieski"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(Colors.blue),
                  ),
                ).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}


class PageTwo extends StatelessWidget {
  final Color value;
  PageTwo(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 2: $value"),
        backgroundColor: value,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Wróć"),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
            TextButton(
              child: Text("Idź do strony 3"),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => PageThree()
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}


class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strona 3"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Wróć do stront 2"),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
    );
  }
}