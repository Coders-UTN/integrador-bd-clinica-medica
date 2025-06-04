-- Obras sociales
INSERT INTO obra_social (nombre, activa) VALUES
('OSDE', TRUE),
('Swiss Medical', TRUE),
('Galeno', TRUE),
('Hospital Público', TRUE);

INSERT INTO medico (matricula, tipo_matricula, apellido, dni, nombre, telefono, email, fecha_ingreso, activo) VALUES
('12345', 'nacional', 'Pérez', '12345678', 'Juan', '2611234567', 'juan.perez@medicos.com', '2024-01-15', TRUE),
('67890', 'provincial', 'Gómez', '87654321', 'María', '2617654321', 'maria.gomez@medicos.com', '2024-03-20', TRUE);


INSERT INTO especialidad (nombre, duracion_consulta_promedio, requiere_equipo_especial) VALUES
('Clínica Médica', 30, FALSE),
('Cardiología', 45, TRUE),
('Pediatría', 30, FALSE);


INSERT INTO sede (nombre, direccion, telefono, email) VALUES
('Sede Central', 'Av. San Martín 1234', '2611111111', 'central@clinica.com'),
('Sede Este', 'Calle Belgrano 567', '2612222222', 'este@clinica.com');


INSERT INTO estado (nombre, descripcion) VALUES
('Pendiente', 'Turno pendiente de confirmación'),
('Confirmado', 'Turno confirmado'),
('Cancelado', 'Turno cancelado');


INSERT INTO enfermedades_cronicas (nombre, descripcion) VALUES
('Diabetes', 'Diabetes tipo 1 y 2'),
('Hipertensión', 'Presión arterial elevada'),
('Asma', 'Enfermedad respiratoria crónica');
