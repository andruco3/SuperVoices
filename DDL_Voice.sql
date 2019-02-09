-- Table: public.voice

-- DROP TABLE public.voice;

CREATE TABLE public.voice
(
    id bigint NOT NULL,
    archivo character(500) COLLATE pg_catalog."default" NOT NULL,
    archivomp3 character(500) COLLATE pg_catalog."default",
    estado character(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Voice_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.voice
    OWNER to postgres;
	
select * from voice

insert into voice values(1, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example01.mp4', null, 'En proceso');
insert into voice values(2, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example02.mp4', null, 'En proceso');
insert into voice values(3, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example03.mp4', null, 'En proceso');
insert into voice values(4, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example04.mp4', null, 'En proceso');
insert into voice values(5, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example05.mp4', null, 'En proceso');
insert into voice values(6, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example06.mp4', null, 'En proceso');
insert into voice values(7, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example07.mp4', null, 'En proceso');
insert into voice values(8, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example08.mp4', null, 'En proceso');
insert into voice values(9, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example09.mp4', null, 'En proceso');
insert into voice values(10, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example10.mp4', null, 'En proceso');
insert into voice values(11, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example11.mp4', null, 'En proceso');
insert into voice values(12, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example12.mp4', null, 'En proceso');
insert into voice values(13, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example13.mp4', null, 'En proceso');
insert into voice values(14, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example14.mp4', null, 'En proceso');
insert into voice values(15, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example15.mp4', null, 'En proceso');
insert into voice values(16, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example16.mp4', null, 'En proceso');
insert into voice values(17, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example17.mp4', null, 'En proceso');
insert into voice values(18, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example18.mp4', null, 'En proceso');
insert into voice values(19, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example19.mp4', null, 'En proceso');
insert into voice values(20, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example20.mp4', null, 'En proceso');
insert into voice values(21, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example21.mp4', null, 'En proceso');
insert into voice values(22, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example22.mp4', null, 'En proceso');
insert into voice values(23, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example23.mp4', null, 'En proceso');
insert into voice values(24, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example24.mp4', null, 'En proceso');
insert into voice values(25, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example25.mp4', null, 'En proceso');
insert into voice values(26, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example26.mp4', null, 'En proceso');
insert into voice values(27, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example27.mp4', null, 'En proceso');
insert into voice values(28, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example28.mp4', null, 'En proceso');
insert into voice values(29, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example29.mp4', null, 'En proceso');
insert into voice values(30, '/home/SIS/me.araoz/DesarrolloCLOUD/VoicesRepo/source/example30.mp4', null, 'En proceso');
