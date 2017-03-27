# API Gestión de Usuarios

Esta es una API REST que permite realizar gestión de usuarios guardados en su base de datos. La URL de la API es la siguiente:

> [https://apigestiondeusuarios.herokuapp.com/](https://apigestiondeusuarios.herokuapp.com/)

Esta API está desarrollada en una base de datos PostgreSQL 9.6.2, lenguaje Ruby 2.4.0 bajo el framework Rails 5.0.2.

## Gemas utilizadas

```
# Para el uso de postgresql como base de datos para Active Record:
gem 'pg', '~> 0.18'
# Para el servidor de la app:
gem 'puma', '~> 3.0'

```

## Modelo

La base de datos solo tiene un modelo que corresponde al Usuario. Este tiene los atributos: id (integer), usuario (string), nombre (string), apellido (string) y twitter (string). Los primeros tres atributos siempre deben estar presentes y el atributo id no es modificable.


## Consultas implementadas

### Obtener un usuario: obtiene un usuario según el id indicado.
GET https://apigestiondeusuarios.herokuapp.com/usuario/id

### Editar un usuario: permite editar los parámetros de un usuario según el id indicado.
POST https://apigestiondeusuarios.herokuapp.com/usuario/id

### Eliminar un usuario: elimina permanentemente un usuario del sistema según el id indicado.
DELETE https://apigestiondeusuarios.herokuapp.com/usuario/id

### Listar todos los usuarios: devuelve un listado con todos los usuarios del sistema.
GET https://apigestiondeusuarios.herokuapp.com/usuario

### Crear un usuario: permite crear un nuevo usuario en el sistema. El valor de id se setea automáticamente al crear.
PUT https://apigestiondeusuarios.herokuapp.com/usuario


___



## Alumna:


| Nº Alumno    | Nombre              | Email UC      | Github          |
|:-------------|:--------------------|:--------------|:----------------|
| 12639176     | Sofía Zambrano     | sizambrano@uc.cl | @sofizambrano     |
