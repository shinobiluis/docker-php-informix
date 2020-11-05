# Docker-php-informix

## Paquetes para la instalación de pdo_informix.so
 
Para la generación del paquete se requieren los siguientes paquetes:

* [ibm.csdk.4.50.FC1.LNX.tar](https://drive.google.com/file/d/1prZ_MxgspKj26oYEAi2eXfamgJVAGecX/view?usp=sharing) Para este paquete toma en cuenta el apartado de abajo. Este archivo se debe colocar en una carpeta llamada **ibm**. en raiz de este proyecto.
* [PDO_INFORMIX-1.3.3.tgz](https://drive.google.com/file/d/1fW8D3eiJt1shjC5ka-cBZaQf9gUAbHn6/view?usp=sharing) Este archivo se debe colocar en una carpeta llamada **pdo**. en raiz de este proyecto.

Los links son drive espero nunca se borren esos paquetes en caso de que eso pase los podras descargar de la página de [IBM](http://www-306.ibm.com/software/data/informix/tools/csdk/) 🧟  🧟‍♂️  🧟‍♀️.



### IBM CSDK

Lamentablemente el paquete `ibm.csdk.4.50.FC1.LNX.tar` pesa casi **200 MEGAS**, por este motivo si buscas en la carpeta **ibm** solo veras un **info.txt** que te explica lo mismo que aquí 🤪.

Usa el link de descarga del paquete de **ibm.csdk.4.50.FC1.LNX.tar**, en cuanto descargues coloca ese paquete en la carpeta **ibm**. Recuerda no cambiar el nombre o la extensión ya que la instalación se hace con ese mismo archivo.

[ibm.csdk.4.50.FC1.LNX.tar](https://drive.google.com/file/d/1prZ_MxgspKj26oYEAi2eXfamgJVAGecX/view?usp=sharing)

# Levantando el docker

En tu terminal dirígete a la raíz de este proyecto donde debes ver el archivo **Dockerfile** y **docker-compose.yml**, si no estás en esa carpeta ya te pasaste y debes dar vuelta en el siguiente retorno 😅.

Si ya descargaste e **csdk** ya solo tienes que iniciar la creación de la imagen:

`docker-compose up -d --build`

El proceso de la creación es muy tardado si gustas ve por un café ☕️ y convive con las personas que dicen ser tu familia 👨‍👩‍👧‍👦, espero que te caigan bien.
