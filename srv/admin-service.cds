using { db } from '../db/schema';

service AdminService @(requires: 'authenticated-user'){
    entity Books as projection on db.Books;
    entity Authors as projection on db.Authors;
}