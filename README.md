# Proyecto de Arquitectura de Computadoras UTH - Grupo #6

## INTEGRANTES:
Augusto Manzanarez       
Alberbys Manzanares     
Gerson Manzanares        
Kevin Rodriguez Casco  
Daisy Carolina Pérez      
José Carlos Flores          
Cristian Maradiaga

Este proyecto es parte de la clase de Arquitectura de Computadoras de la Universidad Tecnológica de Honduras (UTH), desarrollado por el Grupo #6. Su objetivo es proporcionar una experiencia práctica en la implementación de aplicaciones utilizando Django, Docker y PHPMyAdmin.

## Descripción del Proyecto

Este proyecto incluye una aplicación de juego de ahorcado desarrollada con Django. Los usuarios pueden jugar al ahorcado y registrar sus estadísticas de juego. Además, el proyecto está configurado para ejecutarse en un entorno Docker, lo que facilita la gestión y el despliegue.

## Instrucciones de Ejecución en Docker

### Requisitos previos: debes de tener instalado Docker, VSCode, python 3.10 en adelante y git en tu equipo.

Para ejecutar este proyecto en un entorno Docker, sigue estos pasos:

1. **Clona el repositorio: utiliza git bash, accede a la carpeta donde guardaras el proyecto y ejecuta el siguiente comando**

    ```bash
    git clone https://github.com/AugustoManza/appAhorcado.git
    ```

2. **Accede al directorio raiz del proyecto:**

    ```bash
    cd nombre-del-repositorio
    ```

**Nota:** crea un nuevo entorno de desarrollo de py y ejecuta:

```bash
./nombreentorno/Scripts/activate
```

verifica el funcionamiento de la aplicacion en VSCode con el comando:

```bash
    python manage.py runserver
```


3. **Construye y ejecuta los contenedores Docker:**

    ```bash
    docker-compose up 
    ```
    

4. **Accede a la aplicación: una vez ejecutado el paso anterior deberas ir a docker y verificar que este creado tanto la imagen como los contenedores**

   La aplicación estará disponible en [http://localhost:8000](http://localhost:8000).

5. **Accede a PHPMyAdmin:**

   PHPMyAdmin estará disponible en [http://localhost:8080](http://localhost:8080) con las credenciales:
   - **Usuario:** root
   - **Contraseña: ""**
  
    ### Nota: en caso de que quieras usar un usuario o contraseña diferente en la base de datos deberas modificar estos parametros en el archivo settings.py y deberas buscar el apartado de DATABASES.

6. **Cargar la base de datos en PHPMYADMIN:**

   una vez realizado el paso anterior importa el archivo de la base de datos llamado:
   ### hangman2bd.sql

## Una vez realizado todos estos pasos ya deberia estar funcionando el proyecto.

# Advertencia

El código de este proyecto está disponible bajo una licencia de código abierto para fines de aprendizaje y demostración. **No se debe utilizar para fines de plagio en trabajos universitarios.** Se anima a los usuarios a estudiar el código para comprender mejor las tecnologías y prácticas utilizadas, pero se debe evitar presentar este código como propio en evaluaciones académicas.

---

¡Espero que este `README.md` cubra todo lo que necesitas! Si hay algo más que te gustaría ajustar, solo házmelo saber.


         

 
