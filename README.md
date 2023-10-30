# MovieMania
Se nos ha encargado el desarrollo de un sistema de gestión para una tienda de peliculas llamada "MovieMania". El cliente nos ha proporcionado una serie de archivos CSV que contienen información sobre las peliculas, clientes y transacciones de la tienda. Nuestra tarea es crear una base de datos relacional que permita llevar un control eficiente del negocio.
Aunque el cliente no ha especificado restricciones, nos ha informado que los amantes de las peliculas suelen ser muy detallistas y aprecian una organización impecable. Por lo tanto, es crucial que la estructura de la base de datos esté bien planificada y organizada.


* # Limpieza

Para la primera fase del encargo empezaremos explorando y limpiando los datos para su posterior utilización en la construcción de nuestra base de datos.

Durante la limpieza encontramos datos sin valor para el objetivo final, las cuales son eliminadas o adaptadas. También encontramos ciertas categorizaciones que modificamos para mayor profundidad. Es el caso de la columna 'special_features' en film.csv. Esta columna se ha dividido en cuatro nuevas columnas, las cuales han sido rellenadas con booleanos.

De la limpieza y exploración de los datos recabamos ciertas conclusiones útiles de cara a la construcción de la base de datos. Una de estas ideas es que, a pesar de que haya 1000 títulos categorizados, en almacen existen 1000 items que corresponden a 207 títulos y que estan distribuidos a lo largo de dos tiendas.
Una vez tratado los archivos lo exportamos a MySQL, donde empezamos a relacionar la estructura de tablas.

* # Relacion
Después de aplicar un tratamiento adicional en SQL, hemos establecido las claves primarias y hemos establecido relaciones entre las claves foráneas. La estructura de datos está ahora completamente definida y las relaciones han sido correctamente establecidas.

  
![Estructura](https://github.com/AlejandroCasna/Proyecto-SQL/blob/main/Imagenes/Estructura.png)
