


CREATE TABLE consulta_medica (
    cod_consulta         INTEGER NOT NULL,
    cod_paciente         INTEGER NOT NULL,
    cod_medico           INTEGER NOT NULL,
    motivo_consulta      VARCHAR2(50 CHAR) NOT NULL,
    diagnostico          VARCHAR2(30 CHAR) NOT NULL,
    cod_receta           INTEGER NOT NULL
    
);



ALTER TABLE consulta_medica ADD CONSTRAINT consulta_medica_pk PRIMARY KEY ( cod_consulta );

CREATE TABLE funcionarios (
    cod_funcionario         INTEGER NOT NULL,
    nombre_funcionario      VARCHAR2(20 CHAR) NOT NULL,
    app_funcionario         VARCHAR2(20 CHAR) NOT NULL,
    apm_funcionario         VARCHAR2(20 CHAR) NOT NULL,
    direccion_funcionario   VARCHAR2(40 CHAR) NOT NULL,
    telefono                INTEGER NOT NULL
);

ALTER TABLE funcionarios ADD CONSTRAINT funcionarios_pk PRIMARY KEY ( cod_funcionario );

CREATE TABLE inventario_medicamento (
    id_invetario                  INTEGER NOT NULL,
    cod_medicamento               INTEGER NOT NULL,
    cantidad_restante             INTEGER NOT NULL
    
);



ALTER TABLE inventario_medicamento ADD CONSTRAINT inventario_medicamento_pk PRIMARY KEY ( id_invetario );

CREATE TABLE medicamento (
    cod_medicamento         INTEGER NOT NULL,
    nombre_medicamento      VARCHAR2(30 CHAR) NOT NULL,
    nombre_generico         VARCHAR2(30 CHAR) NOT NULL,
    fecha_vencimiento       varchar2(10 CHAR) NOT NULL,
    laboratorio             VARCHAR2(20 CHAR) NOT NULL
  
);



ALTER TABLE medicamento ADD CONSTRAINT medicamento_pk PRIMARY KEY ( cod_medicamento );

CREATE TABLE medicos (
    cod_medico                     INTEGER NOT NULL,
    nombre_medico                  VARCHAR2(20 CHAR) NOT NULL,
    app_medico                     VARCHAR2(20 CHAR) NOT NULL,
    apm_medico                     VARCHAR2(20 CHAR) NOT NULL,
    especialidad                   VARCHAR2(20 CHAR) NOT NULL,
    telefono                       INTEGER NOT NULL,
    direccion                      VARCHAR2(40 CHAR) NOT NULL
    
);



ALTER TABLE medicos ADD CONSTRAINT medicos_pk PRIMARY KEY ( cod_medico );

CREATE TABLE paciente (
    cod_paciente                   INTEGER NOT NULL,
    nom_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    app_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    apm_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    fecha_nacimiento               DATE NOT NULL,
    sexo                           VARCHAR2(1 CHAR) NOT NULL,
    sector                         VARCHAR2(10 CHAR) NOT NULL,
    telefono                       INTEGER NOT NULL,
    direccion                      VARCHAR2(40 CHAR) NOT NULL
);



ALTER TABLE paciente ADD CONSTRAINT paciente_pk PRIMARY KEY ( cod_paciente );

CREATE TABLE recetas (
    cod_receta                       INTEGER NOT NULL,
    cod_medico                       INTEGER NOT NULL,
    cod_paciente                     INTEGER NOT NULL,
    cod_medicamento                  INTEGER NOT NULL,
    fecha_receta                     DATE NOT NULL,
    cantidad_pastillas               INTEGER NOT NULL,
    descripcion                      VARCHAR2(40 CHAR) NOT NULL
    
);



ALTER TABLE recetas ADD CONSTRAINT recetas_pk PRIMARY KEY ( cod_receta );

CREATE TABLE recetas_anuladas (
    cod_anulacion        INTEGER NOT NULL,
    cod_receta           INTEGER NOT NULL,
    fecha_anulacion      INTEGER
);



ALTER TABLE recetas_anuladas ADD CONSTRAINT recetas_anuladas_pk PRIMARY KEY ( cod_anulacion );

CREATE TABLE reg_ret_farmacia (
    cod_reg_retiro          INTEGER NOT NULL,
    cod_paciente            INTEGER NOT NULL,
    cod_receta              INTEGER NOT NULL,
    fecha_retiro            DATE NOT NULL
    
);

ALTER TABLE reg_ret_farmacia ADD CONSTRAINT reg_ret_farmacia_pk PRIMARY KEY ( cod_reg_retiro );

CREATE TABLE registro_horas (
    cod_reg_hora            INTEGER NOT NULL,
    cod_paciente            INTEGER NOT NULL,
    fecha_reg               DATE NOT NULL,
    hora                    VARCHAR2(5 CHAR) NOT NULL
    
);

ALTER TABLE registro_horas ADD CONSTRAINT registro_horas_pk PRIMARY KEY ( cod_reg_hora );

CREATE TABLE reserva_medicamento (
    cod_reserva                    INTEGER NOT NULL,
    cod_funcionario                INTEGER NOT NULL,
    cod_paciente                   INTEGER NOT NULL,
    cod_medicamento                INTEGER NOT NULL,
    cantidad_reservada             INTEGER NOT NULL,
    fecha_reserva                  DATE NOT NULL
    
);

ALTER TABLE reserva_medicamento ADD CONSTRAINT reserva_medicamento_pk PRIMARY KEY ( cod_reserva );

CREATE TABLE usuarios (
    cod_usuario      INTEGER NOT NULL,
    nombre_usuario   VARCHAR2(20 CHAR) NOT NULL,
    contrasena       VARCHAR2(10 CHAR) NOT NULL,
    tipo_usuario     INTEGER NOT NULL
);

ALTER TABLE usuarios ADD CONSTRAINT usuarios_pk PRIMARY KEY ( cod_usuario );

ALTER TABLE consulta_medica ADD CONSTRAINT cod_paciente_consulta_fk FOREIGN KEY ( cod_paciente )
    REFERENCES paciente ( cod_paciente );   
    
    
ALTER TABLE consulta_medica ADD CONSTRAINT cod_medico_consulta_fk FOREIGN KEY ( cod_medico )
    REFERENCES medicos ( cod_medico );
    
    
ALTER TABLE consulta_medica ADD CONSTRAINT cod_receta_consulta_fk FOREIGN KEY ( cod_receta )
    REFERENCES recetas ( cod_receta );
    
    
    
ALTER TABLE inventario_medicamento ADD CONSTRAINT medicamento_inventario_fk FOREIGN KEY ( cod_medicamento )



CREATE TABLE consulta_medica (
    cod_consulta         INTEGER NOT NULL,
    cod_paciente         INTEGER NOT NULL,
    cod_medico           INTEGER NOT NULL,
    motivo_consulta      VARCHAR2(50 CHAR) NOT NULL,
    diagnostico          VARCHAR2(30 CHAR) NOT NULL,
    cod_receta           INTEGER NOT NULL
    
);



ALTER TABLE consulta_medica ADD CONSTRAINT consulta_medica_pk PRIMARY KEY ( cod_consulta );

CREATE TABLE funcionarios (
    cod_funcionario         INTEGER NOT NULL,
    nombre_funcionario      VARCHAR2(20 CHAR) NOT NULL,
    app_funcionario         VARCHAR2(20 CHAR) NOT NULL,
    apm_funcionario         VARCHAR2(20 CHAR) NOT NULL,
    direccion_funcionario   VARCHAR2(40 CHAR) NOT NULL,
    telefono                INTEGER NOT NULL
);

ALTER TABLE funcionarios ADD CONSTRAINT funcionarios_pk PRIMARY KEY ( cod_funcionario );

CREATE TABLE inventario_medicamento (
    id_invetario                  INTEGER NOT NULL,
    cod_medicamento               INTEGER NOT NULL,
    cantidad_restante             INTEGER NOT NULL
    
);



ALTER TABLE inventario_medicamento ADD CONSTRAINT inventario_medicamento_pk PRIMARY KEY ( id_invetario );

CREATE TABLE medicamento (
    cod_medicamento         INTEGER NOT NULL,
    nombre_medicamento      VARCHAR2(30 CHAR) NOT NULL,
    nombre_generico         VARCHAR2(30 CHAR) NOT NULL,
    fecha_vencimiento       DATE NOT NULL,
    laboratorio             VARCHAR2(20 CHAR) NOT NULL
  
);



ALTER TABLE medicamento ADD CONSTRAINT medicamento_pk PRIMARY KEY ( cod_medicamento );

CREATE TABLE medicos (
    cod_medico                     INTEGER NOT NULL,
    nombre_medico                  VARCHAR2(20 CHAR) NOT NULL,
    app_medico                     VARCHAR2(20 CHAR) NOT NULL,
    apm_medico                     VARCHAR2(20 CHAR) NOT NULL,
    especialidad                   VARCHAR2(20 CHAR) NOT NULL,
    telefono                       INTEGER NOT NULL,
    direccion                      VARCHAR2(40 CHAR) NOT NULL
    
);



ALTER TABLE medicos ADD CONSTRAINT medicos_pk PRIMARY KEY ( cod_medico );

CREATE TABLE paciente (
    cod_paciente                   INTEGER NOT NULL,
    nom_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    app_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    apm_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    fecha_nacimiento               DATE NOT NULL,
    sexo                           VARCHAR2(1 CHAR) NOT NULL,
    sector                         VARCHAR2(10 CHAR) NOT NULL,
    telefono                       INTEGER NOT NULL,
    direccion                      VARCHAR2(40 CHAR) NOT NULL
);



ALTER TABLE paciente ADD CONSTRAINT paciente_pk PRIMARY KEY ( cod_paciente );

CREATE TABLE recetas (
    cod_receta                       INTEGER NOT NULL,
    cod_medico                       INTEGER NOT NULL,
    cod_paciente                     INTEGER NOT NULL,
    cod_medicamento                  INTEGER NOT NULL,
    fecha_receta                     DATE NOT NULL,
    cantidad_pastillas               INTEGER NOT NULL,
    descripcion                      VARCHAR2(40 CHAR) NOT NULL
    
);



ALTER TABLE recetas ADD CONSTRAINT recetas_pk PRIMARY KEY ( cod_receta );

CREATE TABLE recetas_anuladas (
    cod_anulacion        INTEGER NOT NULL,
    cod_receta           INTEGER NOT NULL,
    fecha_anulacion      INTEGER
);



ALTER TABLE recetas_anuladas ADD CONSTRAINT recetas_anuladas_pk PRIMARY KEY ( cod_anulacion );

CREATE TABLE reg_ret_farmacia (
    cod_reg_retiro          INTEGER NOT NULL,
    cod_paciente            INTEGER NOT NULL,
    cod_receta              INTEGER NOT NULL,
    fecha_retiro            DATE NOT NULL
    
);

ALTER TABLE reg_ret_farmacia ADD CONSTRAINT reg_ret_farmacia_pk PRIMARY KEY ( cod_reg_retiro );

CREATE TABLE registro_horas (
    cod_reg_hora            INTEGER NOT NULL,
    cod_paciente            INTEGER NOT NULL,
    fecha_reg               DATE NOT NULL,
    hora                    VARCHAR2(5 CHAR) NOT NULL
    
);

ALTER TABLE registro_horas ADD CONSTRAINT registro_horas_pk PRIMARY KEY ( cod_reg_hora );

CREATE TABLE reserva_medicamento (
    cod_reserva                    INTEGER NOT NULL,
    cod_funcionario                INTEGER NOT NULL,
    cod_paciente                   INTEGER NOT NULL,
    cod_medicamento                INTEGER NOT NULL,
    cantidad_reservada             INTEGER NOT NULL,
    fecha_reserva                  DATE NOT NULL
    
);

ALTER TABLE reserva_medicamento ADD CONSTRAINT reserva_medicamento_pk PRIMARY KEY ( cod_reserva );

CREATE TABLE usuarios (
    cod_usuario      INTEGER NOT NULL,
    nombre_usuario   VARCHAR2(20 CHAR) NOT NULL,
    contrasena       VARCHAR2(10 CHAR) NOT NULL,
    tipo_usuario     INTEGER NOT NULL
);

ALTER TABLE usuarios ADD CONSTRAINT usuarios_pk PRIMARY KEY ( cod_usuario );

ALTER TABLE consulta_medica ADD CONSTRAINT cod_paciente_consulta_fk FOREIGN KEY ( cod_paciente )
    REFERENCES paciente ( cod_paciente );   
    
    
ALTER TABLE consulta_medica ADD CONSTRAINT cod_medico_consulta_fk FOREIGN KEY ( cod_medico )
    REFERENCES medicos ( cod_medico );
    
    
ALTER TABLE consulta_medica ADD CONSTRAINT cod_receta_consulta_fk FOREIGN KEY ( cod_receta )
    REFERENCES recetas ( cod_receta );
    
    
    
ALTER TABLE inventario_medicamento ADD CONSTRAINT medicamento_inventario_fk FOREIGN KEY ( cod_medicamento )
    REFERENCES medicamento ( cod_medicamento );
    
            
ALTER TABLE recetas ADD CONSTRAINT recetas_cod_medico_fk FOREIGN KEY ( cod_medico )
    REFERENCES medicos ( cod_medico );
    
    
ALTER TABLE recetas ADD CONSTRAINT recetas_cod_paciente_fk FOREIGN KEY ( cod_paciente )
    REFERENCES paciente ( cod_paciente );
    
    
ALTER TABLE recetas ADD CONSTRAINT recetas_cod_medicamento_fk FOREIGN KEY ( cod_medicamento )
    REFERENCES medicamento ( cod_medicamento );
    
    
ALTER TABLE recetas_anuladas ADD CONSTRAINT cod_recetas_anuladas_fk FOREIGN KEY ( cod_receta )
    REFERENCES recetas ( cod_receta );
    
    
ALTER TABLE reg_ret_farmacia ADD CONSTRAINT registro_cod_paciente_fk FOREIGN KEY ( cod_paciente )
    REFERENCES paciente ( cod_paciente );
    
    
ALTER TABLE reg_ret_farmacia ADD CONSTRAINT registro_cod_receta_fk FOREIGN KEY ( cod_receta )
    REFERENCES recetas ( cod_receta );
    
    
ALTER TABLE registro_horas ADD CONSTRAINT reg_hora_cod_paciente_fk FOREIGN KEY ( cod_paciente )
    REFERENCES paciente ( cod_paciente );
    
    
ALTER TABLE reserva_medicamento ADD CONSTRAINT reserva_cod_paciente_fk FOREIGN KEY ( cod_paciente )
    REFERENCES paciente ( cod_paciente );
    
    
ALTER TABLE reserva_medicamento ADD CONSTRAINT reserva_cod_funcionarios_fk FOREIGN KEY ( cod_funcionario )
    REFERENCES funcionarios ( cod_funcionario );
    
    
ALTER TABLE reserva_medicamento ADD CONSTRAINT reserva_cod_medicamento_fk FOREIGN KEY ( cod_medicamento )
    REFERENCES medicamento ( cod_medicamento );

