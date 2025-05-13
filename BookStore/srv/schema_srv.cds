using {com.sap.BookStore as db} from '../db/schema';
service BookStoreService @(path:'BookStoreService',requires:'admin') {
    @odata.draft.enabled
    entity Books as projection on db.Books;
    entity Authors as projection on db.Authors;

    action rateBook(bookID:Integer,rating:Integer) returns Books;

    function getPopularBook() returns Books;
    
}
service CustomerService @(requires:['customer','admin']){
    @readonly
    entity Books       as projection on db.Books;
    
    @readonly
    entity Authors     as projection on db.Authors;
    
    entity Reviews     as projection on db.Reviews;
     @readonly
    entity Publishers  as projection on db.Publishers;

}