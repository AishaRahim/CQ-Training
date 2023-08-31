// To parse this JSON data, do
//
//     final bookbyId = bookbyIdFromJson(jsonString);

import 'dart:convert';

BookbyId bookbyIdFromJson(String str) => BookbyId.fromJson(json.decode(str));

String bookbyIdToJson(BookbyId data) => json.encode(data.toJson());

class BookbyId {
    int? id;
    String? name;
    String? author;
    String? isbn;
    String? type;
    double? price;
    int? currentStock;
    bool? available;

    BookbyId({
        this.id,
        this.name,
        this.author,
        this.isbn,
        this.type,
        this.price,
        this.currentStock,
        this.available,
    });

    factory BookbyId.fromJson(Map<String, dynamic> json) => BookbyId(
        id: json["id"],
        name: json["name"],
        author: json["author"],
        isbn: json["isbn"],
        type: json["type"],
        price: json["price"].toDouble(),
        currentStock: json["current-stock"],
        available: json["available"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "author": author,
        "isbn": isbn,
        "type": type,
        "price": price,
        "current-stock": currentStock,
        "available": available,
    };
}
