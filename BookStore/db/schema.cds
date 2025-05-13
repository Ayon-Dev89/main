namespace com.sap.BookStore;
using {cuid,Language,Currency,managed} from '@sap/cds/common';
type ISBN: String(15);
entity Books :managed {
    key ID: String(20);
    title: String(60);
    author: Association to Authors;
    isbn : ISBN;
    stock:Integer;
    price: Currency;
    discount: Integer;
    publisher: Association to Publishers;
    reviews: Composition of many Reviews on reviews.book = $self;
}

entity Authors{
    key ID : String(20);
    authorName: String(60);
    address:String(50); 
    pincode : Integer;
    books: Composition of many Books on books.author =$self;

// books : Association to Books ;
// books : Composition of one Books;
}
entity Publishers : cuid, managed {
  name         : String(100);
  location     : String(100);
  books        : Association to many Books on books.publisher = $self;
}

// Reviews
entity Reviews : cuid, managed {
  rating       : Integer;
  comment      : String;
  reviewer     : String;
  book         : Association to Books;
}