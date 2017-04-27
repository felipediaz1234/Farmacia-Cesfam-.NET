
CREATE TABLE consulta_medica (
    cod_consulta         INTEGER NOT NULL,
    cod_paciente         INTEGER NOT NULL,
    cod_medico           INTEGER NOT NULL,
    motivo_consulta      VARCHAR2(50 CHAR) NOT NULL,
    diagnostico          VARCHAR2(30 CHAR) NOT NULL,
    cod_receta           INTEGER NOT NULL,
    
);


ALTER TABLE consulta_medica ADD CONSTRAINT consulta_medica_pk PRIMARY KEY ( cod_consulta );

CREATE TABLE funcionarios (
    cod_funcionario         INTEGER NOT NULL,
    rut_funcionario         INTEGER NOT NULL,
    dv_funcionario          VARCHAR2(1 CHAR)NOT NULL,
    nombre_funcionario      VARCHAR2(20 CHAR) NOT NULL,
    app_funcionario         VARCHAR2(20 CHAR) NOT NULL,
    apm_funcionario         VARCHAR2(20 CHAR) NOT NULL,
    direccion_funcionario   VARCHAR2(40 CHAR) NOT NULL,
    telefono                INTEGER NOT NULL,
    CONSTRAINT funcionarios_pk PRIMARY KEY ( cod_funcionario )
);



CREATE TABLE inventario_medicamento (
    id_invetario                  INTEGER NOT NULL,
    cod_medicamento               INTEGER NOT NULL,
    cantidad_restante             INTEGER NOT NULL,
    CONSTRAINT inventario_medicamento_pk PRIMARY KEY ( id_invetario );
);


CREATE TABLE medicamento (
    cod_medicamento         INTEGER NOT NULL,
    nombre_medicamento      VARCHAR2(30 CHAR) NOT NULL,
    nombre_generico         VARCHAR2(30 CHAR) NOT NULL,
    fecha_vencimiento       DATE NOT NULL,
    laboratorio             VARCHAR2(20 CHAR) NOT NULL,
    
);

ALTER TABLE medicamento ADD CONSTRAINT medicamento_pk PRIMARY KEY ( cod_medicamento );

CREATE TABLE medicos (
    cod_medico                     VARCHAR2(6 CHAR)NOT NULL,
    rut_medico			   INTEGER NOT NULL,
    dv_medico			   VARCHAR2(1 CHAR) NOT NULL,
    nombre_medico                  VARCHAR2(20 CHAR) NOT NULL,
    app_medico                     VARCHAR2(20 CHAR) NOT NULL,
    apm_medico                     VARCHAR2(20 CHAR) NOT NULL,
    password			   VARCHAR2(20 CHAR) NOT NULL,
    especialidad                   VARCHAR2(20 CHAR) NOT NULL,
    telefono                       INTEGER NOT NULL,
    direccion                      VARCHAR2(40 CHAR) NOT NULL    
);

ALTER TABLE medicos ADD CONSTRAINT medicos_pk PRIMARY KEY ( cod_medico );

CREATE TABLE paciente (
    cod_paciente                   INTEGER NOT NULL,
    rut_paciente		   INTEGER NOT NULL,
    dv_paciente			   VARCHAR2(1 CHAR) NOT NULL,
    nom_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    app_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    apm_paciente                   VARCHAR2(20 CHAR) NOT NULL,
    fecha_nacimiento               DATE NOT NULL,
    genero                         VARCHAR2(1 CHAR) NOT NULL,
    sector                         VARCHAR2(10 CHAR) NOT NULL,
    telefono                       INTEGER NOT NULL,
    direccion                      VARCHAR2(40 CHAR) NOT NULL, 
    CONSTRAINT paciente_pk PRIMARY KEY ( cod_paciente );  
);

CREATE TABLE recetas (
    cod_receta                       INTEGER NOT NULL,
    cod_medico                       INTEGER NOT NULL,
    cod_paciente                     INTEGER NOT NULL,
    cod_medicamento                  INTEGER NOT NULL,
    fecha_receta                     DATE NOT NULL,
    cantidad_pastillas               INTEGER NOT NULL,
    descripcion                      VARCHAR2(40 CHAR) NOT NULL,
    cod_consulta                     INTEGER NOT NULL,
    
);

ALTER TABLE recetas ADD CONSTRAINT recetas_pk PRIMARY KEY ( cod_receta );

CREATE TABLE recetas_anuladas (
    cod_anulacion        INTEGER NOT NULL,
    cod_receta           INTEGER NOT NULL,
    fecha_anulacion      INTEGER not null
    
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

ALTER TABLE reserva_medicamento ADD CONSTRAINT reserva_medicamento_pk PRIMARY KEY ( cod_reserva,paciente_cod_paciente,funcionarios_cod_funcionario
 );

CREATE TABLE usuarios (
    cod_usuario      INTEGER NOT NULL,
    nombre_usuario   VARCHAR2(20 CHAR) NOT NULL,
    contrasena       VARCHAR2(10 CHAR) NOT NULL,
    tipo_usuario     INTEGER NOT NULL
);

ALTER TABLE usuarios ADD CONSTRAINT usuarios_pk PRIMARY KEY ( cod_usuario );

ALTER TABLE consulta_medica ADD CONSTRAINT consulta_medica_recetas_fk FOREIGN KEY ( recetas_cod_receta )
    REFERENCES recetas ( cod_receta );

ALTER TABLE inventario_medicamento ADD CONSTRAINT inv_medicamento_medicamento_fk FOREIGN KEY ( medicamento_cod_medicamento )
    REFERENCES medicamento ( cod_medicamento );

ALTER TABLE medicamento ADD CONSTRAINT medicamento_inv_medicamento_fk FOREIGN KEY ( in_medicamento_id_inv )
    REFERENCES inventario_medicamento ( id_invetario );

ALTER TABLE medicos ADD CONSTRAINT medicos_consulta_medica_fk FOREIGN KEY ( consulta_medica_cod_consulta )
    REFERENCES consulta_medica ( cod_consulta );

ALTER TABLE paciente ADD CONSTRAINT paciente_consulta_medica_fk FOREIGN KEY ( consulta_medica_cod_consulta )
    REFERENCES consulta_medica ( cod_consulta );

ALTER TABLE recetas_anuladas ADD CONSTRAINT recetas_anuladas_recetas_fk FOREIGN KEY ( recetas_cod_receta )
    REFERENCES recetas ( cod_receta );

ALTER TABLE recetas ADD CONSTRAINT recetas_consulta_medica_fk FOREIGN KEY ( consulta_medica_cod_consulta )
    REFERENCES consulta_medica ( cod_consulta );

ALTER TABLE recetas ADD CONSTRAINT recetas_medicamento_fk FOREIGN KEY ( medicamento_cod_medicamento )
    REFERENCES medicamento ( cod_medicamento );

ALTER TABLE recetas ADD CONSTRAINT recetas_recetas_anuladas_fk FOREIGN KEY ( recetas_anuladas_cod_anulacion )
    REFERENCES recetas_anuladas ( cod_anulacion );

ALTER TABLE reg_ret_farmacia ADD CONSTRAINT reg_ret_farmacia_paciente_fk FOREIGN KEY ( paciente_cod_paciente )
    REFERENCES paciente ( cod_paciente );

ALTER TABLE registro_horas ADD CONSTRAINT registro_horas_paciente_fk FOREIGN KEY ( paciente_cod_paciente )
    REFERENCES paciente ( cod_paciente );

ALTER TABLE reserva_medicamento ADD CONSTRAINT res_medic_funcionarios_fk FOREIGN KEY ( funcionarios_cod_funcionario )
    REFERENCES funcionarios ( cod_funcionario );

ALTER TABLE reserva_medicamento ADD CONSTRAINT res_medic_paciente_fk FOREIGN KEY ( paciente_cod_paciente )
    REFERENCES paciente ( cod_paciente );

