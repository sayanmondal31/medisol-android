import 'package:cloud_firestore/cloud_firestore.dart';

class SearchService {
  searchByName(String searchField) {
    return Firestore.instance
        .collection('donor')
        .where('name' ).where('address').where('gender').where('mobile')
        .getDocuments();
  }
}
