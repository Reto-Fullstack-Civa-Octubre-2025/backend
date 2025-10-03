-- ======================
-- INSERTAR MARCAS
-- ======================
INSERT INTO marcas (id, nombre) SELECT 1, 'Mercedes-Benz' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 1);
INSERT INTO marcas (id, nombre) SELECT 2, 'Volvo' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 2);
INSERT INTO marcas (id, nombre) SELECT 3, 'Scania' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 3);
INSERT INTO marcas (id, nombre) SELECT 4, 'MAN' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 4);
INSERT INTO marcas (id, nombre) SELECT 5, 'Iveco' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 5);
INSERT INTO marcas (id, nombre) SELECT 6, 'Mercedes-Benz Citaro' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 6);
INSERT INTO marcas (id, nombre) SELECT 7, 'Volvo Buses' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 7);
INSERT INTO marcas (id, nombre) SELECT 8, 'Scania Touring' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 8);
INSERT INTO marcas (id, nombre) SELECT 9, 'MAN Lion’s Coach' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 9);
INSERT INTO marcas (id, nombre) SELECT 10, 'Iveco Crossway' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 10);
INSERT INTO marcas (id, nombre) SELECT 11, 'Setra' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 11);
INSERT INTO marcas (id, nombre) SELECT 12, 'Neoplan' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 12);
INSERT INTO marcas (id, nombre) SELECT 13, 'King Long' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 13);
INSERT INTO marcas (id, nombre) SELECT 14, 'Yutong' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 14);
INSERT INTO marcas (id, nombre) SELECT 15, 'BYD' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 15);
INSERT INTO marcas (id, nombre) SELECT 16, 'Hyundai' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 16);
INSERT INTO marcas (id, nombre) SELECT 17, 'Hino' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 17);
INSERT INTO marcas (id, nombre) SELECT 18, 'Isuzu' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 18);
INSERT INTO marcas (id, nombre) SELECT 19, 'Toyota' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 19);
INSERT INTO marcas (id, nombre) SELECT 20, 'Mitsubishi Fuso' WHERE NOT EXISTS (SELECT 1 FROM marcas WHERE id = 20);


-- ======================
-- INSERTAR BUSES (1..100)
-- ======================
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 1,  'BUS-001', 'ABC-001', 'Activo',   1, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 1);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 2,  'BUS-002', 'ABC-002', 'Inactivo', 2, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 2);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 3,  'BUS-003', 'ABC-003', 'Activo',   3, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 3);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 4,  'BUS-004', 'ABC-004', 'Inactivo', 4, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 4);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 5,  'BUS-005', 'ABC-005', 'Activo',   5, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 5);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 6,  'BUS-006', 'ABC-006', 'Inactivo', 6, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 6);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 7,  'BUS-007', 'ABC-007', 'Activo',   7, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 7);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 8,  'BUS-008', 'ABC-008', 'Inactivo', 8, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 8);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 9,  'BUS-009', 'ABC-009', 'Activo',   9, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 9);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 10, 'BUS-010', 'ABC-010', 'Inactivo',10, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 10);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 11, 'BUS-011', 'ABC-011', 'Activo',   11, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 11);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 12, 'BUS-012', 'ABC-012', 'Inactivo',12, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 12);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 13, 'BUS-013', 'ABC-013', 'Activo',   13, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 13);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 14, 'BUS-014', 'ABC-014', 'Inactivo',14, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 14);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 15, 'BUS-015', 'ABC-015', 'Activo',   15, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 15);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 16, 'BUS-016', 'ABC-016', 'Inactivo',16, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 16);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 17, 'BUS-017', 'ABC-017', 'Activo',   17, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 17);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 18, 'BUS-018', 'ABC-018', 'Inactivo',18, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 18);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 19, 'BUS-019', 'ABC-019', 'Activo',   19, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 19);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 20, 'BUS-020', 'ABC-020', 'Inactivo',20, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 20);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 21, 'BUS-021', 'ABC-021', 'Activo',   1, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 21);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 22, 'BUS-022', 'ABC-022', 'Inactivo',2, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 22);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 23, 'BUS-023', 'ABC-023', 'Activo',   3, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 23);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 24, 'BUS-024', 'ABC-024', 'Inactivo',4, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 24);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 25, 'BUS-025', 'ABC-025', 'Activo',   5, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 25);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 26, 'BUS-026', 'ABC-026', 'Inactivo',6, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 26);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 27, 'BUS-027', 'ABC-027', 'Activo',   7, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 27);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 28, 'BUS-028', 'ABC-028', 'Inactivo',8, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 28);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 29, 'BUS-029', 'ABC-029', 'Activo',   9, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 29);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 30, 'BUS-030', 'ABC-030', 'Inactivo',10, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 30);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 31, 'BUS-031', 'ABC-031', 'Activo',   11, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 31);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 32, 'BUS-032', 'ABC-032', 'Inactivo',12, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 32);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 33, 'BUS-033', 'ABC-033', 'Activo',   13, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 33);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 34, 'BUS-034', 'ABC-034', 'Inactivo',14, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 34);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 35, 'BUS-035', 'ABC-035', 'Activo',   15, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 35);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 36, 'BUS-036', 'ABC-036', 'Inactivo',16, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 36);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 37, 'BUS-037', 'ABC-037', 'Activo',   17, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 37);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 38, 'BUS-038', 'ABC-038', 'Inactivo',18, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 38);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 39, 'BUS-039', 'ABC-039', 'Activo',   19, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 39);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 40, 'BUS-040', 'ABC-040', 'Inactivo',20, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 40);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 41, 'BUS-041', 'ABC-041', 'Activo',   1, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 41);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 42, 'BUS-042', 'ABC-042', 'Inactivo',2, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 42);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 43, 'BUS-043', 'ABC-043', 'Activo',   3, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 43);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 44, 'BUS-044', 'ABC-044', 'Inactivo',4, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 44);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 45, 'BUS-045', 'ABC-045', 'Activo',   5, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 45);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 46, 'BUS-046', 'ABC-046', 'Inactivo',6, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 46);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 47, 'BUS-047', 'ABC-047', 'Activo',   7, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 47);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 48, 'BUS-048', 'ABC-048', 'Inactivo',8, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 48);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 49, 'BUS-049', 'ABC-049', 'Activo',   9, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 49);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 50, 'BUS-050', 'ABC-050', 'Inactivo',10, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 50);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 51, 'BUS-051', 'ABC-051', 'Activo',   11, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 51);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 52, 'BUS-052', 'ABC-052', 'Inactivo',12, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 52);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 53, 'BUS-053', 'ABC-053', 'Activo',   13, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 53);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 54, 'BUS-054', 'ABC-054', 'Inactivo',14, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 54);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 55, 'BUS-055', 'ABC-055', 'Activo',   15, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 55);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 56, 'BUS-056', 'ABC-056', 'Inactivo',16, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 56);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 57, 'BUS-057', 'ABC-057', 'Activo',   17, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 57);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 58, 'BUS-058', 'ABC-058', 'Inactivo',18, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 58);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 59, 'BUS-059', 'ABC-059', 'Activo',   19, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 59);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 60, 'BUS-060', 'ABC-060', 'Inactivo',20, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 60);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 61, 'BUS-061', 'ABC-061', 'Activo',   1, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 61);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 62, 'BUS-062', 'ABC-062', 'Inactivo',2, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 62);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 63, 'BUS-063', 'ABC-063', 'Activo',   3, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 63);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 64, 'BUS-064', 'ABC-064', 'Inactivo',4, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 64);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 65, 'BUS-065', 'ABC-065', 'Activo',   5, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 65);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 66, 'BUS-066', 'ABC-066', 'Inactivo',6, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 66);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 67, 'BUS-067', 'ABC-067', 'Activo',   7, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 67);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 68, 'BUS-068', 'ABC-068', 'Inactivo',8, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 68);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 69, 'BUS-069', 'ABC-069', 'Activo',   9, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 69);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 70, 'BUS-070', 'ABC-070', 'Inactivo',10, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 70);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 71, 'BUS-071', 'ABC-071', 'Activo',   11, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 71);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 72, 'BUS-072', 'ABC-072', 'Inactivo',12, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 72);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 73, 'BUS-073', 'ABC-073', 'Activo',   13, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 73);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 74, 'BUS-074', 'ABC-074', 'Inactivo',14, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 74);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 75, 'BUS-075', 'ABC-075', 'Activo',   15, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 75);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 76, 'BUS-076', 'ABC-076', 'Inactivo',16, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 76);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 77, 'BUS-077', 'ABC-077', 'Activo',   17, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 77);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 78, 'BUS-078', 'ABC-078', 'Inactivo',18, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 78);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 79, 'BUS-079', 'ABC-079', 'Activo',   19, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 79);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 80, 'BUS-080', 'ABC-080', 'Inactivo',20, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 80);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 81, 'BUS-081', 'ABC-081', 'Activo',   1, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 81);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 82, 'BUS-082', 'ABC-082', 'Inactivo',2, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 82);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 83, 'BUS-083', 'ABC-083', 'Activo',   3, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 83);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 84, 'BUS-084', 'ABC-084', 'Inactivo',4, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 84);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 85, 'BUS-085', 'ABC-085', 'Activo',   5, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 85);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 86, 'BUS-086', 'ABC-086', 'Inactivo',6, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 86);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 87, 'BUS-087', 'ABC-087', 'Activo',   7, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 87);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 88, 'BUS-088', 'ABC-088', 'Inactivo',8, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 88);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 89, 'BUS-089', 'ABC-089', 'Activo',   9, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 89);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 90, 'BUS-090', 'ABC-090', 'Inactivo',10, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 90);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 91, 'BUS-091', 'ABC-091', 'Activo',   11, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 91);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 92, 'BUS-092', 'ABC-092', 'Inactivo',12, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 92);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 93, 'BUS-093', 'ABC-093', 'Activo',   13, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 93);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 94, 'BUS-094', 'ABC-094', 'Inactivo',14, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 94);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 95, 'BUS-095', 'ABC-095', 'Activo',   15, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 95);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 96, 'BUS-096', 'ABC-096', 'Inactivo',16, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 96);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 97, 'BUS-097', 'ABC-097', 'Activo',   17, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 97);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 98, 'BUS-098', 'ABC-098', 'Inactivo',18, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 98);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 99, 'BUS-099', 'ABC-099', 'Activo',   19, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 99);
INSERT INTO buses (id, numero_bus, placa, estado, marca_id, fecha_creacion) SELECT 100,'BUS-100','ABC-100','Inactivo',20, NOW() WHERE NOT EXISTS (SELECT 1 FROM buses WHERE id = 100);


-- =============================================================
-- INSERCIÓN DETALLADA DE CARACTERÍSTICAS PARA LOS 100 BUSES

INSERT INTO bus_caracteristicas (bus_id, caracteristicas)
SELECT
    bus_id.id AS bus_id,
    caract.nombre AS caracteristicas
FROM
    -- 1. Genera los IDs de Bus del 21 al 100
    GENERATE_SERIES(1, 100) AS bus_id(id)
        CROSS JOIN
    -- 2. Define las 5 características (se repiten para cada bus)
        (
            VALUES
                ('Asientos reclinables ergonómicos'),
                ('Cargador USB en cada asiento'),
                ('Aire acondicionado central'),
                ('Sistema de frenos ABS y EBD'),
                ('Monitoreo GPS en tiempo real')
        ) AS caract(nombre)
-- 3.  Evita la inserción de duplicados si el script se corre varias veces
WHERE NOT EXISTS (
    SELECT 1 FROM bus_caracteristicas bc
    WHERE bc.bus_id = bus_id.id
      AND bc.caracteristicas = caract.nombre
);