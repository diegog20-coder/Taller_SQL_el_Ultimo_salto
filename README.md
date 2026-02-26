# Taller_SQL_el_Ultimo_salto
NOMBRE: Diego Gabriel Pereira
Estudiante de Especialización en Big Data
Universidad CESMAG

ANÁLISIS TIENDA EL ULTIMO SUSPIRO (TALLER EN SQL)
Al realizar los puntos solicitados en el ejercicio se puede observar lo siguiente:
La base de datos está compuesta por 4 tablas normalizadas con los siguientes nombres:
•	clientes
•	detalle_ventas
•	productos
•	ventas
Como muy bien lo describe el taller, es una base de datos de una tienda especializada en deportes extremos y paracaidismo destacándose el paracaídas y los accesorios de seguridad. Se tiene en total 250 clientes registrados quienes compran Paracaídas con precios que van desde los $1.500 de un paracaídas de emergencia compacto hasta los $5.200 de un paracaídas Tandem para instructor, en total hay 5 tipos de paracaídas. Como se muestra a continuación:
 
Hasta la fecha existen 1250 transacciones con un valor total de $5.578.915 y la mayor venta realizada a la fecha es de el equivalente a $20.200.
De los clientes registrados todos tienen correo electrónico y como dato interesante se tiene clientes nacidos desde 1935 hasta 2017.
En accesorios existen 5 productos que se encuentra con valores menores a $500 , el precio promedio de los productos que están en inventario son de $1.591,33 y el más barato disponible tiene un precio de $150 que es el Altímetro Analógico Confiable.
La empresa posee un cupón de descuento llamado “ULTIMO_SUSPIRO” del cual hasta el momento lo han redimido en 250 ventas, representando como valor de descuento o dejado de percibir $359.385
El cliente que más dinero ha gastado es Eligia Robles Iniesta con un monto total de $65.440.
El producto más vendido en cantidad es el Gafa de noche Infra Ventiladas con un total de 274 unidades vendidas.
Para cada categoría de producto, el ingreso total, cantidad de unidades vendidas y ticket promedio por venta son:
-- Categoría: Paracaídas, Ingreso Total: $4.218.900, Unidades Vendidas: 1248, Ticket Promedio: 5083.01
-- Categoría: Accesorios, Ingreso Total: $1.719.400, Unidades Vendidas: 2548, Ticket Promedio: 1016.79
49 clientes han usado el cupon “ULTIMO SUSPIRO” al menos 3 veces, las veces que mas han hecho uso del cupo son 8 veces que es el señor Macario del Alcázar, una muestra de los clientes con esta característica son:
 
El porcentaje de ventas (por ingresos) que provienen del cupón "ULTIMO_SUSPIRO" es aproximadamente 15%.
La empresa tiene clientes de Alto, Medio y Bajo Valor, que están clasificados según su valor de compra y que ayudan a dirigir campañas para seguir fidelizando los clientes de Alto Valor, incentivando a que los de Medio Valor no bajen de clasificación sino que suban a la categoría de Alto Valor y una campaña fuerte dirigida para quienes están en Bajo Valor para incentivar compras y fidelizar clientes. Las cifras son las siguientes:
 
Un gran porcentaje son de Alto valor con un 94%, es decir la empresa tiene muy buena fidelización de clientes que compran un valor representativo en la tienda, en tanto, el 3% son de Medio Valor y otro 3% son de Bajo Valor.
Los 5 productos con mayores ingresos acumulados son los siguientes:
 
El producto con mayor ingreso acumulado es el Paracaídas Tandem para instructor, el cual tiene una relación directa con el precio de venta y el menor producto entre los 5 productos es la Mochila de Reserva Compacta.
Analizando las ventas para el año 2025 por mes, se obtiene la siguiente tabla:
 
En esta tabla se puede observar que el mes con mayor número de transacciones es octubre con 70 transacciones y con un total de ventas de $296.642 y el mes con menor número de ventas es septiembre con 45 transacciones pero no es el mes con menor valor de ventas, en cambio marzo si es el mes con menor valor en ventas de 198.049, con un ticket promedio de 3.809.
El cliente que compró la mayor variedad de productos diferentes es "Dimas Ambrosio Hernando Bermudez" con 13 tipos distintos de productos.
La cliente que compro solo paracaídas (nunca compró accesorios) es:   
-- Nombre: Leandra Benavent Baeza, Total Gastado: 12300
La diferencia en ingresos entre el mes con mayor venta y el mes con menor venta en 2025 es de $98593
Se evalúa los clientes que han dejado de comprar por mas de 180 días como una lista de riesgo, que le puede servir a la empresa a buscar estrategias de rotación de inventario para la venta. 
De igual manera, estrategias que me permitan fidelizar los clientes y establecer la razón por la cual no han regresado los clientes.
La tabla siguiente muestra los resultados de dicho análisis.
 
Como se puede observar en el cuadro anterior, los clientes que no han regresado a comprar a la tienda en total son 86, de los cuales 16% pertenecen al año 2024 y el 84% a 2025. La tienda es importante que realice campañas o estrategias para incentivar el retorno del cliente y estar monitoreando estos datos por cuanto es un factor de riesgo a tener en cuenta de que un cliente no ha regresado hace mas de 180 días, seguramente encontró otro lugar de compra, otra variedad de productos, precios con mejor promoción o factores de atención al cliente, incluso de ambientación o locación de la tienda. Todo eso puede influir en la rotación de compra de los clientes.
La mayoría de clientes de la tienda son de mas de 70 años de edad, ellos realizan el mayor número de transacciones con 277 pero no son los que compran mas o por los cuales la tienda recibe mas ingresos, estos son los que clientes que están entre los 30 a 39 años de edad que tienen un el segundo numero mayor de transacciones y el rango de edad que genera mayores ingresos, los cuales están en $1.366.430; los clientes que menos realizan compras y transacciones al mismo tiempo son los de 60 a 69 años. Los datos se los puede observar a continuación:
 

