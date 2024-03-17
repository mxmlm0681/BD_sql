CREATE TABLE IF NOT EXISTS Genres(
id serial PRIMARY KEY,
genre_name varchar(15) NOT null
);

CREATE TABLE IF NOT EXISTS Executor(
id serial PRIMARY KEY,
executor_name varchar(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreExecutor(
id serial PRIMARY KEY,
genre_id integer NOT NULL REFERENCES Genres(id),
executor_id integer NOT NULL REFERENCES Executor(id)
);

CREATE TABLE IF NOT EXISTS Album(
id serial PRIMARY KEY,
album_name varchar(40) NOT NULL,
album_year integer NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumExecutor(
id serial PRIMARY KEY,
album_id integer NOT NULL REFERENCES Album(id),
executor_id integer NOT NULL REFERENCES Executor(id)
);

CREATE TABLE IF NOT EXISTS Song(
id serial PRIMARY KEY,
song_name varchar(25) NOT NULL,
song_duration integer NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection(
id serial PRIMARY KEY,
collection_name varchar(25) NOT NULL,
collection_year integer NOT NULL
);

create table if not exists CollectionSong(
id serial primary key,
song_id integer not null references Song(id),
collection_id integer not null references Collection(id)
);


INSERT INTO public.genres
(id, genre_name)
VALUES(1, 'pop');

INSERT INTO public.genres
(id, genre_name)
VALUES(2, 'rock');

INSERT INTO public.genres
(id, genre_name)
VALUES(3, 'rap');


INSERT INTO public.executor
(id, executor_name)
VALUES(1, 'Emibem');

INSERT INTO public.executor
(id, executor_name)
VALUES(3, 'Kanye west');

INSERT INTO public.executor
(id, executor_name)
VALUES(4, 'Metallica');

INSERT INTO public.executor
(id, executor_name)
VALUES(5, 'Aerosmith');

INSERT INTO public.executor
(id, executor_name)
VALUES(6, 'Nirvana');

INSERT INTO public.executor
(id, executor_name)
VALUES(7, 'Madonna');

INSERT INTO public.executor
(id, executor_name)
VALUES(8, 'Gwen Stefani');

INSERT INTO public.executor
(id, executor_name)
VALUES(9, 'Ledy Gaga');

INSERT INTO public.executor
(id, executor_name)
VALUES(10, '2 pac');

INSERT INTO public.executor
(id, executor_name)
VALUES(11, 'Imagine Dragons');

INSERT INTO public.executor
(id, executor_name)
VALUES(12, 'Rihanna');

INSERT INTO public.executor
(id, executor_name)
VALUES(2, 'Jay - Z');


INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(1, 1, 7);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(2, 1, 8);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(3, 2, 4);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(4, 2, 5);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(5, 2, 6);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(6, 3, 1);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(7, 3, 2);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(8, 3, 3);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(9, 1, 9);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(10, 3, 10);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(11, 2, 11);

INSERT INTO public.genreexecutor
(id, genre_id, executor_id)
VALUES(12, 1, 12);


INSERT INTO public.album
(id, album_name, album_year)
VALUES(1, 'Tragic Kingdom', 1995);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(2, 'Trolls', 2016);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(3, 'Purple Irises', 2024);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(4, 'realest', 2023);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(5, 'The Marshall Mathers', 2000);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(6, 'The Eminem Show', 2002);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(7, 'Watch the throne', 2011);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(8, 'The Blueprint', 2001);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(9, 'The Black Album', 2003);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(10, 'Donda', 2021);


INSERT INTO public.album
(id, album_name, album_year)
VALUES(11, 'Shine', 2008);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(12, 'Ye', 2018);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(13, 'Famous', 2016);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(14, 'Metallica', 1991);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(15, '72 Seasons', 2023);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(16, 'Master of Puppets', 1986);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(17, 'Big Ten Inch Record', 2019);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(18, 'Pump', 1989);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(19, 'Get a Grip', 1993);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(20, 'Nevermind', 1991);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(21, 'In Utero', 1993);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(22, 'Bleach', 1989);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(23, 'Celebration', 2009);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(24, 'Frozen On Fire', 2022);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(25, 'True Blue', 1986);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(26, 'The Highlights', 2021);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(27, 'The fame', 2008);
INSERT INTO public.album

(id, album_name, album_year)
VALUES(28, 'Artpop', 2013);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(29, 'Chromatica', 2020);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(30, 'Me Against The World', 1995);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(31, 'All eyez on Me', 1996);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(32, 'Pac''s Life', 2006);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(33, 'Nitht Visions', 2012);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(34, 'Evolve', 2017);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(35, 'Mercury', 2022);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(36, 'Music of the Sun', 2005);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(37, 'Rated R', 2009);

INSERT INTO public.album
(id, album_name, album_year)
VALUES(38, 'Anti', 2016);


INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(1, 1, 8);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(2, 2, 8);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(3, 3, 8);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(4, 4, 1);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(5, 5, 1);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(6, 6, 1);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(7, 7, 2);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(8, 8, 2);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(9, 9, 2);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(10, 10, 3);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(11, 11, 3);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(12, 12, 3);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(13, 13, 4);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(14, 14, 4);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(15, 15, 4);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(16, 16, 4);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(17, 17, 5);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(18, 18, 5);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(19, 19, 5);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(20, 20, 6);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(21, 21, 6);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(22, 22, 6);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(23, 23, 7);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(24, 24, 7);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(25, 25, 7);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(26, 26, 7);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(27, 27, 9);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(28, 28, 9);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(29, 29, 9);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(30, 30, 10);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(31, 31, 10);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(32, 32, 10);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(33, 33, 11);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(34, 34, 11);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(35, 35, 11);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(36, 36, 12);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(37, 37, 12);

INSERT INTO public.albumexecutor
(id, album_id, executor_id)
VALUES(38, 38, 12);


INSERT INTO public.song
(id, song_name, song_duration)
VALUES(5, 'True Bade', 297);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(16, 'Otis', 289);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(18, 'Part II', 297);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(22, 'Price God', 298);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(23, 'I Wonder', 326);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(35, 'Amazing', 299);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(39, 'Rape me', 298);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(43, 'Popular', 302);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(51, 'Aura', 235);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(52, 'Venus', 234);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(53, 'Stupid Love', 193);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(54, 'Rain on me', 182);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(1, 'Just a Girle', 256);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(2, 'Dont Speak', 289);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(3, 'Hair Up', 245);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(4, 'Move your feet', 276);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(7, 'My Mom', 289);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(8, 'The way i am', 308);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(10, 'Lose yourself', 225);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(12, 'Realest', 228);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(13, 'Empire state of mind', 297);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(14, 'Numb', 301);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(20, 'Ghost Town', 202);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(55, 'Dear Mama', 330);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(56, 'Dont Stop', 325);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(57, 'Fuck the world', 321);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(58, 'So many tears', 351);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(59, 'How Do U Want it', 287);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(60, 'Life Goes On', 302);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(61, 'Radioactive', 186);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(62, 'It''s time', 337);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(63, 'Believer', 204);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(64, 'Thunder', 187);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(65, 'My Life', 224);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(66, 'Wrecked', 244);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(6, 'Purple Irises', 226);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(9, 'My name is', 225);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(11, 'Without me', 248);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(15, 'song cry', 259);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(17, 'Renegade', 257);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(19, 'Famous', 268);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(21, 'Violent Crimes', 272);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(24, 'American Boy', 254);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(25, '72 Seasons', 227);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(26, 'Orion', 287);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(27, 'The Unfogiven', 201);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(28, 'Enter Sandman', 254);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(29, 'Nothing else Matters', 221);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(30, 'Sad But True', 254);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(31, 'Crazy', 278);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(32, 'Water song', 243);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(33, 'What it Takes', 291);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(34, 'Cryin', 287);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(36, 'Livin on the edge', 242);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(37, 'Lithium', 228);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(38, 'Pollly', 276);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(40, 'All Apologies', 246);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(41, 'Dump', 251);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(42, 'Drain You', 224);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(44, '4 Minutes', 253);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(45, 'Frozen of Fire', 224);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(46, 'Celebration', 251);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(47, 'Live to Tell', 227);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(48, 'Papa dont Preach', 261);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(49, 'Just Dance', 278);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(50, 'Eh, Eh', 243);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(67, 'My Life', 224);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(68, 'Wrecked', 244);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(69, 'Radioactive', 186);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(70, 'Demons', 175);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(71, 'Belliver', 204);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(72, 'Rise Up', 231);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(73, 'Pon de Replay', 244);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(74, 'Let Me', 234);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(75, 'Hard', 250);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(76, 'Rude Boy', 223);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(77, 'Decperado', 186);

INSERT INTO public.song
(id, song_name, song_duration)
VALUES(78, 'Higher', 120);


INSERT INTO public.collection
(id, collection_name, collection_year)
VALUES(1, 'Rap hits', 2000);

INSERT INTO public.collection
(id, collection_name, collection_year)
VALUES(2, 'POP Collection', 2020);

INSERT INTO public.collection
(id, collection_name, collection_year)
VALUES(3, 'Rock Hits', 2016);

INSERT INTO public.collection
(id, collection_name, collection_year)
VALUES(4, 'Great Hits', 2021);


INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(1, 7, 1);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(2, 9, 1);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(3, 14, 1);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(4, 10, 1);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(5, 58, 1);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(6, 60, 1);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(7, 2, 2);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(8, 6, 2);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(9, 45, 2);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(10, 65, 2);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(11, 76, 2);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(12, 25, 3);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(13, 31, 3);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(14, 37, 3);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(15, 61, 3);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(16, 63, 3);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(17, 14, 4);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(18, 2, 4);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(19, 9, 4);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(20, 28, 4);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(21, 10, 4);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(22, 14, 4);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(23, 37, 4);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(24, 49, 4);

INSERT INTO public.collectionsong
(id, song_id, collection_id)
VALUES(25, 69, 4);


SELECT id, song_name, song_duration
FROM public.song
WHERE song_duration = (select max(song_duration) from public.song s );

SELECT song_name
FROM public.song
WHERE song_duration > 210;

SELECT id, collection_name, collection_year
FROM public.collection
WHERE collection_year between 2018 and 2020;

select executor_name
FROM public.executor
WHERE executor_name not like '%% %%';

SELECT song_name
FROM public.song
WHERE song_name like '%%My%%';

select g.genre_name , count(g2.executor_id)
from genres g 
join genreexecutor g2 on g.id = g2.genre_id 
group by g.genre_name ;

select a.album_name, a.album_year, count(s.id)
from album a 
join song s on a.id  = s.id 
where a.album_year between 2019 and 2020
group by a.album_name , a.album_year 

select a.album_name, avg(s.song_duration)
from album a 
join song s on a.id = s.id 
group by a.album_name 

select e.executor_name
from executor e 
join albumexecutor a on e.id = a.executor_id 
join album a2 on a2.id = a.album_id 
where a2.album_year != 2020;

select c.collection_name 
from collection c 
join collectionsong c2 on c.id = c2.collection_id 
join song s on s.id = c2.song_id 
join album a on a.id = s.id 
join collectionsong c3 on a.id = c3.id 
join executor e on e.id =c3.id 
where e.executor_name like '%%2 pac%%'


