using {com.sap.BookStore as db} from '../db/schema';
service BookStorteService {
    entity Books as projection on db.Books;
    // entity Authors as projection on db.Authors;
    
}