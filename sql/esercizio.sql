/*
Date le tabelle:

create table autori (
    id int,
    nome varchar,
    cognome varchar,
    anno_nascita int,
    constraint autori_pk primary key (id)
);


create table case_editrici (
    id int,
    nome varchar,
    cognome varchar,
    nazionalita int,
    constraint case_editrici_pk primary_key (id)
);

create table libri (
    id int,
    titolo varchar,
    autore_id int,
    casa_editrice_id int,
    anno_pubblicazione int,
    constraint libri_pk orimary key (id),
    constraint libri_autori_fk foreign key (autore_id) references autori(id) on delete cascade,
    constraint libri_case_editrici_fk foreign key (casa_editrice_id) references case_editrici(id) on delete null
);
*/

/* ESERCIZIO 1:
    scrivere la/le query sql per recuperare, per ogni libro scritto da un autore nato prima del 2000,
     tutte le informazioni riguardanti il libro e nome e cognome dell'autore.
*/

/* ESERCIZIO 2:
    scrivere la/le istruzione sql per cancellare l'autore Jhon Doe e tutti i suoi libri.
*/

/* ESERCIZIO 3:
    scrivere la/le istruzione sql per cancellare la casa editrice "ACME edizioni" e tutti i suoi libri.
*/

/* ESERCIZIO 4:
    scrivere la/le query sql per recuperare per ogni autore, nome, cognome, nazionalità e numero di libri scritti.
*/

select * from libri natural join
autori
where autore_id=id and  anno_nascita<=2000;

delete from autori where nome='John' and cognome='Doe';