DROP TABLE IF docentes CASCADE 
DROP TABLE IF actividades CASCADE 
DROP TABLE IF alumnos CASCADE 
DROP TABLE IF asignación_act CASCADE 
DROP TABLE IF asistencia_act CASCADE 

create table docentes(

	DNI           varchar        ,
	Nombre        varchar        ,   
	Teléfono      serial         ,
	ANodeIngreso  smallserial    ,
	
	CONSTRAINT pk_docentes PRIMARY KEY(Nombre,Teléfono) 

);

create table actividades(
	
	
	IdAct  smallserial   ,
	Nombre  varchar      ,
	Direcion serial      ,
	
	CONSTRAINT pk_actividades PRIMARY KEY(IdAct,Nombre)

);

create table alumnos(
	Cod_alumno   smallserial  , 
	Nombre       varchar      ,
	Teléfono     serial       ,
	Nivel        serial       ,
	
	CONSTRAINT pk_alumnos PRIMARY KEY (Nombre,Teléfono)
	
);


create table asignación_act(
	IdDoc       smallserial ,
    IdAct       smallserial ,
    DiaSemana   timestamp   ,
    Hora        time        ,
	
	CONSTRAINT pk_asignación_act PRIMARY KEY (IdAct,IdDoc)

);

create table asistencia_act(
	IdAlum   smallserial  ,
	IdAct    smallserial  ,
	IdDoc    smallserial  ,
	
	CONSTRAINT pk_asistencia_act PRIMARY KEY (IdAlum,IdAct,IdDoc)
	
);


















