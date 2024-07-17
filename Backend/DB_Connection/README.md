# DB_Connection ![MYSQL ](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)

Este archivo contiene el código necesario para establecer una conexión a la base de datos MySQL utilizando las funciones de MySQLi en PHP. La conexión se configura con los siguientes parámetros:

- **`$servername`**: Especifica el nombre del servidor de la base de datos, en este caso "localhost".
- **`$username`**: Define el nombre de usuario que se utiliza para conectar a la base de datos.
- **`$password`**: La contraseña asociada con el usuario de la base de datos.

El proceso de conexión se lleva a cabo con la función `mysqli_connect`, que toma los parámetros anteriores para intentar establecer una conexión. Si la conexión falla, el script termina la ejecución y muestra un mensaje de error utilizando `mysqli_connect_error`. Si la conexión se establece con éxito, se muestra un mensaje de confirmación


## Estructura de Archivos

>IntegradoraI-NombreProyecto<br>
>| **- Backend **<br>
>&nbsp;&nbsp;|**- DB_Connection**<br>
>&nbsp;&nbsp;|- PHP<br>
>| - Database<br>
> | - FrontEnd <br>
>| - Documentation<br>


## Equipo de Desarrollo

|Integrante|Contacto|Rol|Observaciones|
|------------|--------|---|---|
|M.T.I. Marco Antnio Ramírez Hernández|[@MTI-MarcoRH](https://github.com/MTI-MarcoRH)|Líder del  Desarrollo Frontend |😔 No ha revisado|
|Derek Sesni Carreño|[@DevFntxy](https://github.com/DevFntxy)|Desarrollador Frontend|✅ Revisado y aprobado|