create table Patient (
PK_CPR int primary key not null,
fnavn varchar(30) not null,
enavn varchar(30) not null,
adresse varchar(50) not null,
adresseNr varchar(5) not null,
tlf int not null,
)

create table Journal ( 
FK_CPR int foreign key references Patient(PK_CPR),
tekst varchar(500)
)

create table Indlæggelse (
PK_inNr int primary key identity,
startDato date not null,
slutDato date not null
)

create table Ansatte (
PK_anNr int primary key not null,
fnavn varchar(30) not null,
enavn varchar(30) not null,
adresse varchar(50) not null,
adresseNr varchar(5) not null,
tlf int not null,
)

create table _By (
postNr int not null,
_by varchar(20) not null,
FK_CPR int foreign key references Patient(PK_CPR),
FK_anNr int foreign key references Ansatte(PK_anNr)
)

create table Rum (
PK_rumNr int primary key not null,
enkeltværelse int not null,
dobbeltværelse int not null,
operationsstue int not null
)

create table Behandling (
PK_beNr int primary key not null,
FK_rumNr int foreign key references Rum(PK_rumNr),
FK_anNr int foreign key references Ansatte(PK_anNr)
)

create table Ydelser (
FK_beNr int foreign key references Behandling(PK_beNr),
FK_inNr int foreign key references Indlæggelse(PK_inNr)
)