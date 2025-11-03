Algoritmo CalcularCostoProducto
	
	// Declarar variables
	Definir nombreProducto, destino Como Cadena
	Definir descuento, iva, precioOriginal, precioDescuento, precioIVA, cantidad, descuentoCantidad, precioFinalUnitario, peso, costoEnvio, costoFinal Como Real
	
	// Entrada de datos
	Escribir "Ingrese el nombre del producto: "
	Leer nombreProducto
	
	Escribir "Ingrese el precio original del producto: "
	Leer precioOriginal
	
	Escribir "Ingrese el porcentaje de descuento (si no tiene, escriba 0): "
	Leer descuento
	
	Escribir "Ingrese el porcentaje del IVA: "
	Leer iva
	
	Escribir "Ingrese la cantidad de artículos comprados: "
	Leer cantidad
	
	Escribir "Ingrese el peso total del paquete (en kg): "
	Leer peso
	
	Escribir "Ingrese el destino del envío: "
	Leer destino
	
	// Descuento del cupón
	precioDescuento <- precioOriginal - (precioOriginal * descuento / 100)
	
	// IVA
	precioIVA <- precioDescuento + (precioDescuento * iva / 100)
	
	// Aplicar descuento por cantidad (5% si compra más de 1 unidad)
	Si cantidad > 1 Entonces
		descuentoCantidad <- 5
	Sino
		descuentoCantidad <- 0
	FinSi
	
	// Precio final por unidad
	precioFinalUnitario <- precioIVA - (precioIVA * descuentoCantidad / 100)
	
	// Calcular costo de envío
	costoEnvio <- 13 + (peso * 1.5)
	
	// Calcular costo final total
	costoFinal <- (precioFinalUnitario * cantidad) + costoEnvio
	
	// Mostrar resultados
	Escribir ""
	Escribir "==============================================="
	Escribir "Producto: ", nombreProducto
	Escribir "Destino: ", destino
	Escribir "Precio original: $", precioOriginal
	Escribir "Descuento aplicado (", descuento, "%): -$", precioOriginal * descuento / 100
	Escribir "Precio con descuento: $", precioDescuento
	Escribir "IVA aplicado (", iva, "%): +$", precioDescuento * iva / 100
	Escribir "Precio con IVA: $", precioIVA
	Escribir "Descuento por cantidad (", descuentoCantidad, "%): -$", precioIVA * descuentoCantidad / 100
	Escribir "Precio final unitario: $", precioFinalUnitario
	Escribir "Costo de envío total: $", costoEnvio
	Escribir "-----------------------------------------------"
	Escribir "COSTO FINAL A PAGAR: $", costoFinal
	Escribir "==============================================="
FinAlgoritmo
