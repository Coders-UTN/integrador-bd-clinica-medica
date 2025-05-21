# Proyecto Integrador: Diseño y Modelado de Base de Datos para Clínica Médica

---

## 📄 Descripción del Proyecto

Este proyecto es el trabajo final integrador de la materia **Bases de Datos**. Consiste en el diseño y modelado de una base de datos relacional para una clínica médica, buscando optimizar la gestión de pacientes, turnos médicos, especialidades, tratamientos realizados y resultados de consultas. Además, facilitar el análisis del rendimiento médico, cantidad de turnos por especialidad, y seguimiento de pacientes crónicos. También se podrá filtrar la información según especialidades específicas.

El objetivo principal es crear un esquema de base de datos robusto, normalizado y eficiente, que permita almacenar, consultar y gestionar la información de la clínica de manera segura y coherente, cumpliendo con los requisitos de trazabilidad y acceso diferenciado a la información (ej. médicos vs. secretarios).

---

## ✨ Características Principales de la Base de Datos

* **Gestión de Pacientes:** Almacena información demográfica y de contacto de los pacientes, incluyendo su afiliación a obras sociales y enfermedades crónicas.
* **Gestión de Profesionales:** Organiza los datos de los médicos y sus especialidades.
* **Agendamiento de Turnos:** Permite la asignación y seguimiento de turnos médicos, asociándolos a pacientes, médicos, sedes y secretarios.
* **Historia Clínica Detallada:** Registra de forma cronológica y estructurada las evoluciones médicas de cada paciente, incluyendo motivos de consulta, diagnósticos y tratamientos.
* **Manejo de Obras Sociales:** Soporte para múltiples obras sociales por paciente, incluyendo la gestión de pacientes particulares.
* **Trazabilidad:** Permite identificar quién agendó un turno o quién realizó una evolución médica.
* **Control de Acceso (Vistas):** Diseño que facilita la implementación de vistas SQL diferenciadas para distintos perfiles de usuario (ej. médicos con acceso a historia clínica completa, secretarios con acceso limitado).

---

## 🛠️ Tecnologías y Herramientas Utilizadas

* **Lenguaje de Modelado:** DBML (Database Markup Language) para el diseño del esquema.
* **Herramienta de Diagramado:** `dbdiagram.io` y `drawdb.app` para la visualización y modelado gráfico del Diagrama Entidad-Relación (DER).
* **Sistema de Gestión de Base de Datos (SGBD):** SQL
* **Cliente de Base de Datos:** DBeaver
---
