import 'package:json_annotation/json_annotation.dart';
import 'package:shopping/src/bloc/logo.dart';

part 'book.g.dart';

@JsonSerializable()
class Book{
  @JsonKey(name: "_id")
  String id;
  String title;
  String intro;
  String isbn13;
  String isbn10;
  int price;
  String publishDt;
  String publisher;
  String author;
  String thumbnail;
  String createdDate;

  LOGO pLogo;

  String get logo {
    String result;
    switch(publisher){
      case "위키북스":
        return result = "1";
      case "한빛":
        return result = "2";
      default:
    }
    return result;
  }

  Book({this.id, this.title, this.intro, this.isbn13, this.isbn10, this.price,
      this.publishDt, this.publisher, this.author, this.thumbnail,
      this.createdDate});

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);

  @override
  String toString() {
    return 'Book{id: $id, title: $title, intro: $intro, isbn13: $isbn13, isbn10: $isbn10, price: $price, publishDt: $publishDt, publisher: $publisher, author: $author, thumbnail: $thumbnail, createDate: $createdDate}';
  }


}