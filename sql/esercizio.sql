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
    scrivere la/le query sql per recuperare, per ogni libro scritto da un autore nato prima del 2000, tutte le informazioni riguardanti il libro e nome e cognome dell'autore.
*/

select libri.*,
    autori.nome,
    autori.cognome
    from libri
    join autori on autori.autore_id = libri.id
    where autori.anno_nascita < 2000;

/* ESERCIZIO 2:
    scrivere la/le istruzione sql per cancellare l'autore Jhon Doe e tutti i suoi libri.
*/
delete from autori where nome = 'John' and cognome = 'Doe'; -- on cascade vengono cancellati i libri di tale autore

/* ESERCIZIO 3:
    scrivere la/le istruzione sql per cancellare la casa editrice "ACME edizioni" e tutti i suoi libri.
*/
delete from libri where casa_editrice_id = (select id from case_editrici where nome = 'ACME edizioni');
delete from case_editrici where nome = 'ACME edizioni';

/* ESERCIZIO 4:
    scrivere la/le query sql per recuperare per ogni autore, nome, cognome, nazionalità e numero di libri scritti.
*/

select autori.nome,
       autori.cognome,
       autori.nazionalita,
       count(libri.id) as numero_libri_scritti
    from autori
    join libri 
     on autori.autore_id = libri.id
    group by (autori.nome,
       autori.cognome,
       autori.nazionalita);