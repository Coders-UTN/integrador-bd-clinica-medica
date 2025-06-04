INSERT INTO paciente (dni, nombre, apellido, email, telefono, direccion, id_obra_social, nro_afiliado) VALUES
('30123456', 'Carlos', 'Gutiérrez', 'carlos@gmail.com', '2613334444', 'Calle A 123', 1, '123456'),
('40123457', 'Lucía', 'Martínez', 'lucia@gmail.com', '2615556666', 'Calle B 456', 2, '654321'),
('50123458', 'Sofía', 'Ramírez', 'sofia.ramirez@gmail.com', '2614445555', 'Calle C 789', 3, '789012'),
('60123459', 'Martín', 'Díaz', 'martin.diaz@gmail.com', '2616667777', 'Calle D 101', 1, '345678'),
('70123460', 'Florencia', 'Alvarez', 'florencia.alvarez@gmail.com', '2618889999', 'Calle E 112', 2, '901234');


INSERT INTO secretario (id_sede, apellido, nombre, telefono, email) VALUES
(1, 'Fernández', 'María', '2617778888', 'maria.fernandez@clinica.com'),
(2, 'Lopez', 'Jorge', '2619990000', 'jorge.lopez@clinica.com');

INSERT INTO turno (id_paciente, id_medico, id_secretario, id_estado, id_sede, fecha, hora, motivo, observaciones) VALUES
(1, 1, 1, 1, 1, '2025-06-05', '10:00:00', 'Consulta general', 'Paciente refiere dolor de cabeza'),
(2, 2, 2, 2, 2, '2025-06-06', '14:30:00', 'Chequeo rutinario', 'Paciente sin antecedentes'),
(3, 1, 1, 1, 1, '2025-06-07', '09:00:00', 'Consulta cardiología', 'Revisión de síntomas'),
(4, 2, 2, 2, 2, '2025-06-08', '11:30:00', 'Control diabetes', 'Paciente en tratamiento'),
(5, 1, 1, 1, 1, '2025-06-09', '15:00:00', 'Consulta general', 'Nueva consulta');


INSERT INTO pacientes_enfermedades_cronicas (id_paciente, id_enfermedad, fecha_diagnostico, observaciones) VALUES
(1, 1, '2020-01-15', 'Tratamiento con insulina'),
(2, 2, '2022-05-10', 'En tratamiento con medicación');


INSERT INTO evoluciones_clinicas (id_paciente, id_medico, fecha_evolucion, tipo_evolucion, motivo, observaciones) VALUES
(1, 1, '2025-06-03', 'consulta', 'Consulta general', 'Se observa mejora en el estado clínico'),
(2, 2, '2025-06-04', 'control', 'Control de hipertensión', 'Presión estable');
