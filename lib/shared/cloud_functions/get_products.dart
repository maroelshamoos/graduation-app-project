import 'package:cloud_firestore/cloud_firestore.dart';

class Products {
  Future getproducts () async{
    print('GET N ');
    await FirebaseFirestore.instance.collection('products').get().then((value) => value.docs.map((e) => print(e.data())));          //.doc('LJMeCstnrlP6p5EtOasQ').get();
    print('GET N ');
    // products.docs.map((e) => print(e.data()));
  }
}