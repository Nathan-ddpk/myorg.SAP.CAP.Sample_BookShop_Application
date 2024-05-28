using { db } from '../db/schema';

service Bookshop @(path: '/browse') {
    @readonly entity Books as projection on db.Books {*,
        author.name as author
    } excluding { createdBy, modifiedBy }

}