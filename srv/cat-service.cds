using { db } from '../db/schema';

service Bookshop {
    entity Books as projection on db.Books;
    entity Authors as projection on db.Authors;
}