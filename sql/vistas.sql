-- vista para medicos

CREATE VIEW vista_turnos_medicos AS
SELECT
    t.id_turno,
    t.fecha,
    t.hora,
    t.motivo,
    t.observaciones,
    p.id_paciente,
    p.dni,
    p.nombre AS paciente_nombre,
    p.apellido AS paciente_apellido,
    p.email AS paciente_email,
    p.telefono AS paciente_telefono,
    p.direccion AS paciente_direccion,
    p.nro_afiliado,
    p.id_obra_social,
    m.id_medico,
    m.nombre AS medico_nombre,
    m.apellido AS medico_apellido,
    m.matricula,
    m.id_especialidad
    
FROM turno t
JOIN paciente p ON t.id_paciente = p.id_paciente
JOIN medico m ON t.id_medico = m.id_medico;

-- vista para secretarios
CREATE VIEW vista_turnos_secretarios AS
SELECT
    t.id_turno,
    t.fecha_id,
    t.hora,
    p.id_paciente,
    p.dni,
    p.nombre AS paciente_nombre,
    p.apellido AS paciente_apellido,
    p.nro_afiliado,
    m.id_medico,
    m.nombre AS medico_nombre,
    m.apellido AS medico_apellido,
    m.id_especialidad
    
FROM turno t
JOIN paciente p ON t.id_paciente = p.id_paciente
JOIN medico m ON t.id_medico = m.id_medico;

-- evoluciones clinicas para medicos

CREATE VIEW vista_evoluciones_medicas AS
SELECT
    ec.id_evolucion,
    ec.fecha_evolucion,
    ec.tipo_evolucion,
    ec.motivo,
    ec.observaciones,
    p.id_paciente,
    p.dni,
    p.nombre AS paciente_nombre,
    p.apellido AS paciente_apellido,
    p.email AS paciente_email,
    p.telefono AS paciente_telefono,
    p.direccion AS paciente_direccion,
    p.nro_afiliado,
    p.id_obra_social,
    m.id_medico,
    m.nombre AS medico_nombre,
    m.apellido AS medico_apellido,
    m.matricula,
    m.id_especialidad
    
FROM evoluciones_clinicas ec
JOIN paciente p ON ec.id_paciente = p.id_paciente
JOIN medico m ON ec.id_medico = m.id_medico;

-- evoluciones clinicas secretarios

CREATE VIEW vista_evoluciones_secretarios AS
SELECT
    ec.id_evolucion,
    ec.fecha_evolucion,
    ec.tipo_evolucion,
    p.id_paciente,
    p.dni,
    p.nombre AS paciente_nombre,
    p.apellido AS paciente_apellido,
    m.id_medico,
    m.nombre AS medico_nombre,
    m.apellido AS medico_apellido
    
FROM evoluciones_clinicas ec
JOIN paciente p ON ec.id_paciente = p.id_paciente
JOIN medico m ON ec.id_medico = m.id_medico;
