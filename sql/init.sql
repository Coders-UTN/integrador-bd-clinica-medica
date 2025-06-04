CREATE TABLE obra_social(
    id_obra_social INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    activa BOOLEAN DEFAULT TRUE
) ENGINE=InnoDB;

CREATE TABLE medico(
    id_medico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    matricula VARCHAR(20) NOT NULL,
    tipo_matricula ENUM('nacional', 'provincial'),
    apellido VARCHAR(50) NOT NULL,
    dni VARCHAR(15) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    fecha_ingreso DATE,
    activo BOOLEAN DEFAULT TRUE
) ENGINE=InnoDB;

CREATE TABLE especialidad(
    id_especialidad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    duracion_consulta_promedio INT,
    requiere_equipo_especial BOOLEAN DEFAULT FALSE
) ENGINE=InnoDB;

CREATE TABLE sede(
    id_sede INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE estado(
    id_estado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(255)
) ENGINE=InnoDB;

CREATE TABLE enfermedades_cronicas(
    id_enfermedad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255)
)ENGINE=InnoDB;

CREATE TABLE paciente (
    id_paciente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(15) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(100),
    id_obra_social INT,
    nro_afiliado VARCHAR(30),
    
    CONSTRAINT fk_paciente_obra_social FOREIGN KEY (id_obra_social) REFERENCES obra_social(id_obra_social),
    INDEX idx_dni (dni)
)ENGINE=InnoDB;

CREATE TABLE secretario(
    id_secretario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_sede INT NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    
    CONSTRAINT fk_secretario_sede FOREIGN KEY (id_sede) REFERENCES sede(id_sede)
)ENGINE=InnoDB;


CREATE TABLE evoluciones_clinicas(
    id_evolucion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    fecha_evolucion DATE,
    tipo_evolucion ENUM('consulta', 'control', 'urgencia') default 'consulta',
    motivo VARCHAR(100),
    observaciones TEXT,
    
    CONSTRAINT fk_evolucion_paciente FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    CONSTRAINT fk_evolucion_medico FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
)ENGINE=InnoDB;

CREATE TABLE pacientes_enfermedades_cronicas(
    id_paciente INT NOT NULL,
    id_enfermedad INT NOT NULL,
    fecha_diagnostico DATE,
    observaciones VARCHAR(255),
    
    CONSTRAINT pk_paciente_enfermedad PRIMARY KEY (id_paciente, id_enfermedad),
    CONSTRAINT fk_pac_enf_paciente FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    CONSTRAINT fk_pac_enf_enfermedad FOREIGN KEY (id_enfermedad) REFERENCES enfermedades_cronicas(id_enfermedad)
)ENGINE=InnoDB;

CREATE TABLE turno(
    id_turno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    id_secretario INT NOT NULL,
    id_estado INT NOT NULL,
    id_sede INT NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo VARCHAR(100) NOT NULL,
    observaciones VARCHAR(255),
    
    CONSTRAINT fk_turno_paciente FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    CONSTRAINT fk_turno_medico FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
    CONSTRAINT fk_turno_secretario FOREIGN KEY (id_secretario) REFERENCES secretario(id_secretario),
    CONSTRAINT fk_turno_estado FOREIGN KEY (id_estado) REFERENCES estado(id_estado),
    CONSTRAINT fk_turno_sede FOREIGN KEY (id_sede) REFERENCES sede(id_sede)
)ENGINE=InnoDB;
