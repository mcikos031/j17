drop database if exists edunovaj17;
create database edunovaj17;

use edunovaj17;

create table smjer(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
cijena decimal(18,2),
upisnina decimal(18,2),
trajanje int not null
);

create table osoba(
oib char(11) not null primary key,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100),
spol boolean
);

create table grupa(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
datumpocetka datetime,
smjer int not null,
predavac int not null
);

create table predavac(
sifra int not null primary key auto_increment,
osoba char(11) not null,
placa decimal(18,2)
);

create table polaznik(
sifra int not null primary key auto_increment,
osoba char(11) not null,
brojugovora varchar(50)
);

create table clan(
grupa int not null,
polaznik int not null
);



alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table predavac add foreign key (osoba) references osoba(oib);

alter table polaznik add foreign key (osoba) references osoba(oib);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);



insert into smjer(sifra,naziv,cijena,upisnina,trajanje) values 
(null,'Java programiranje',5000.99,500,130),
(null,'PHP programiranje',3000.99,200,130),
(null,'Računalni operator',1000,500,100),
(null,'Serviser računala',2000,500,130);

insert into osoba (oib,ime,prezime,email,spol) values
('00000000000','Tomislav','Jakopec','tjakopec@gmail.com',true),
('00000000001','Vedran','Baričević','veco444@gmail.com',true),
('00000000002','Martin','Cikoš','martin.cikos0607@gmail.com',true),
('00000000003','Ivan','Čizmar','ivancizmar1@gmail.com',true),
('00000000004','Marko','Đuroković','djuro06@gmail.com',true),
('00000000005','Alen','Halilović','alenhalilovi490@gmail.com',true),
('00000000006','Marin','Kolar','marinlarko@gmail.com',true),
('00000000007','Josip','Kozlović','joka.aba44@gmail.com',true),
('00000000008','Vanja','Kurbalija','vanja.kurbalija@gmail.com',true),
('00000000009','Miroslav','Lučić','miroslav2308@gmail.com',true),
('00000000010','Bruno','Marincel','marincel66@gmail.com',true),
('00000000011','Zvonimir','Milanović','zv.milanovic@gmail.com',true),
('00000000012','Aleksandar','Rajić','acke2112@gmail.com',true),
('00000000013','Josip','Regvat','josipregvat@gmail.com',true),
('00000000014','Matej','Šarčević','matej.sikirevci@gmail.com',true),
('00000000015','Petar','Vrbančić','petar.vrb1@gmail.com',true),
('00000000016','Dino','Vukasović','dino.vukasovic@yahoo.com',true),
('00000000017','Adam','Vukelić','adam-vukelic@hotmail.com',true),
('00000000018','Andrej','Vukelić','avukelic031@gmail.com',true),
('00000000019','Mario','Lukić','mlukic017@gmail.com',true),
('00000000020','Domagoj','Glavačević','glavacevic.d@gmail.com',true),
('00000000021','Domagoj','Varga','domagojvarga@hotmail.com',true);

insert into predavac (osoba,placa) values ('00000000000',5000);

insert into grupa(naziv,smjer,predavac,datumpocetka) values
('J17',1,1,'2017-10-28'),
('PP16',2,1,'2017-10-28');

insert into polaznik (osoba,brojugovora) values
('00000000001',''),
('00000000002',''),
('00000000003',''),
('00000000004',''),
('00000000005',''),
('00000000006',''),
('00000000007',''),
('00000000008',''),
('00000000009',''),
('00000000010',''),
('00000000011',''),
('00000000012',''),
('00000000013',''),
('00000000014',''),
('00000000015',''),
('00000000016',''),
('00000000017',''),
('00000000018',''),
('00000000019',''),
('00000000020',''),
('00000000021','');

insert into clan(grupa,polaznik) values 
(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (1,7), (1,8), (1,9), (1,10), (1,11), (1,12), (1,13), (1,14), (1,15), (1,16), (1,17), (1,18), (1,19), (1,20),(1,11),(2,1),(2,21); 














