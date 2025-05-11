namespace com.sap.BookStore;
using {Currency,managed} from '@sap/cds/common';

entity Books :managed {
    key ID: String(20);
    title: String(60);
    isbn : Int64;
    price: Currency
}

entity Authors{
    key ID : String(20);
    authorName: String(60);
    address:String(50); 
    pincode : Int64;

// books : Association to Books ;
// books : Composition of one Books;
}