using { managed } from '@sap/cds/common';

namespace db;

entity Books : managed {
    Key ID: Integer;
    name: String(100);
    descr: String(1000);
    author: Association to Authors;
    stock: Integer
}

entity Authors : managed {
    key ID: Integer;
    name: String;
    books: Association to many Books on books.author = $self
}