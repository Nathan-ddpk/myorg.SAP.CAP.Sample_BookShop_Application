namespace db;

entity Books {
    Key ID: Integer;
    name: String(100);
    descr: String(1000);
    author: Association to Authors;
    stock: Integer
}

entity Authors {
    key ID: Integer;
    name: String;
    books: Association to many Books on books.author = $self
}