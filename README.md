# Nginx-practica

## Estructura de archivos

Creamos la siguiente estructura de archivos:

![image](https://github.com/user-attachments/assets/32191d9a-1a98-4c4f-8843-3a4f9dda00bc)

El primer paso seria: 

- Creamos carpeta `conf` y copiamos archivos `conf` por defecto.

![image](https://github.com/user-attachments/assets/d0de72af-f275-44d1-a17c-4a209a92f5f0)


- Creamos carpetas `sites-available` con sus respectivos conf.

![image](https://github.com/user-attachments/assets/a7f18e3c-bc1b-437f-bb40-47d855888750)


- El primer archivo sera `raul.com.conf` para web SIN protocolo SSL.

![image](https://github.com/user-attachments/assets/31009bdd-2a7d-492c-8924-e60136dbe6ec)

- El segundo archivo sera `fernandez.com.conf` para web CON protocolo SSL.

![image](https://github.com/user-attachments/assets/59f39317-7955-4b3c-aca8-758a4e983f8f)

- El tercer archivo sera  `seguro.net.conf`

![image](https://github.com/user-attachments/assets/532c9ff7-bbcd-450d-a66d-fe2a60a54057)

- Creamos una carpeta llamada website, que dentro contendra todos los html de cada uno de los webhosts.

![image](https://github.com/user-attachments/assets/ffcee4fe-cd62-4083-802a-3dbf01572d1f)

-En cada carpeta haremos una carpeta llamada errors, donde en cada carpeta contendra los errores correspondientes.

![image](https://github.com/user-attachments/assets/3962d016-4c61-49ac-8108-e3c6db85d127)

- Cada web tendra su correspondiente html.

![image](https://github.com/user-attachments/assets/8878791e-bc1d-4172-a464-de7255dd6717)

- En el caso de la web de seguro el html sera:

![image](https://github.com/user-attachments/assets/6b761abf-2e02-49e1-9211-afee96805675)

- Creamos carpeta `privado` dentro del webhost que configuraremos con SSL. A esta solo se accederá al iniciar sesión con el usuario autenticado.

![image](https://github.com/user-attachments/assets/01634b8a-55ce-4523-8191-c55f36d17def)

- Creamos `script` con los comandos que realizará el contenedor automáticamente al iniciarse.

![image](https://github.com/user-attachments/assets/6b4eb434-8643-4af5-8a14-8c8f6ae74f75)

- Creamos carpeta `htpasswd`  sacando la contraseña de la pagina web llamada https://bcrypt-generator.com/.

![image](https://github.com/user-attachments/assets/c56752a9-e807-461a-acb1-5826faf8e125)

- Creamos carpeta `certs`. Que nos encargaremos de generarlos en la consola OpenSsl poniendo el comando:

![Captura de pantalla 2024-10-27 114826](https://github.com/user-attachments/assets/72fa5ca8-b746-44b2-9085-101a8eb9a5d9)

![image](https://github.com/user-attachments/assets/e6a74179-2f42-4548-ba32-029937df3cde)

- Creamos `docker-compose.yml` llamando a la configuración de nuestro contenedor.

![image](https://github.com/user-attachments/assets/735a0187-2e46-4e79-930e-f22bc421e086)

## Ejecutamos el contenedor.

Buscamos las siguientes rutas.

- `raul.com`

![image](https://github.com/user-attachments/assets/cb049cca-786c-4a15-a91f-2f69843a39b2)


- `fernandez.com`



- `seguro.net`

![image](https://github.com/user-attachments/assets/8986008c-96ab-4e10-afb5-7e827147a4c6)


- `seguro.net/privado` 

![image](https://github.com/user-attachments/assets/7b223703-8113-43e6-b41f-e7e03184535a)

- Se ponen la contraseña y el usuario que habremos introducido anteriormente.

![image](https://github.com/user-attachments/assets/4c881574-6252-4dbf-828b-937439378f3c)

