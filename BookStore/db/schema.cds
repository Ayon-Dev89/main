namespace com.sap.BookStore;
using {cuid,Currency,managed} from '@sap/cds/common';

entity Books :cuid,managed {
    key ID: Integer;
    title: String(20);
    isbn : Integer;
    price: Currency
}

entity Authors{
    key ID : Integer;
    authorName: String(20);
    address:String(50); 
    pincode : Integer;

books : Association to Books ;
// books : Composition of one Books;
}