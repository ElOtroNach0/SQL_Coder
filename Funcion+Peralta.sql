CREATE FUNCTION fn_calcular_total_ingresos_por_tipo_servicio (@tipo_servicio VARCHAR(50))
RETURNS MONEY
AS
BEGIN
    DECLARE @total_ingresos MONEY
    
    SELECT @total_ingresos = SUM(f.monto_total)
    FROM factura f
    JOIN tipo_servicio ts ON f.id_servicio = ts.id_servicio
    WHERE ts.nombre_servicio = @tipo_servicio
    
    RETURN @total_ingresos
END


CREATE FUNCTION fn_buscar_reservas_por_fecha (@fecha_inicio DATE, @fecha_fin DATE)
RETURNS TABLE
AS
RETURN
(
    SELECT r.id_reserva, p.first_name, p.last_name, r.fecha_compra, ts.nombre_servicio, f.monto_total
    FROM reserva r
    JOIN pax p ON r.id_pax = p.id_pax
    JOIN factura f ON r.id_facturacion = f.id_facturacion
    JOIN tipo_servicio ts ON f.id_servicio = ts.id_servicio
    WHERE r.fecha_compra BETWEEN @fecha_inicio AND @fecha_fin
)