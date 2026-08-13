<img src="https://posgrado.utec.edu.pe/sites/default/files/2023-08/Testimonial-home-2.jpg" alt="UTEC" width="900" height="200">

# 🛠️ Guía de instalación: PostgreSQL + pgAdmin

**Requisito previo para la Sesión 14 — DDL y DML**

Completar esta instalación antes de la clase.

⏱️ Tiempo estimado: 15-20 minutos

---

## ⚠️ Importante antes de empezar

Durante la instalación será necesario crear una **contraseña para el usuario `postgres`**.

> **Nota importante:** Guarde esta contraseña en un lugar seguro. Será requerida cada vez que acceda a pgAdmin. Si la olvida, deberá reinstalar la aplicación.

---

## 🪟 Instalación en Windows

### Paso 1: Descargar el instalador

1. Ir a: https://www.postgresql.org/download/windows/
2. Click en **"Download the installer"** (te lleva al sitio de EDB).
3. Descargar la versión más reciente para Windows (x86-64).

### Paso 2: Ejecutar el instalador

1. Abrir el archivo `.exe` descargado.
2. Si Windows pregunta "¿Deseas permitir que esta app haga cambios?" → **Sí**.
3. En el asistente de instalación:
   - **Installation Directory:** dejar la ruta por defecto.
   - **Select Components:** asegúrate de que estén marcados:
     - ✅ PostgreSQL Server
     - ✅ pgAdmin 4
     - ✅ Command Line Tools
   - **Data Directory:** dejar por defecto.
   - **Password:** crea y **anota** la contraseña del superusuario `postgres`.
   - **Port:** dejar el puerto por defecto (`5432`).
   - **Locale:** dejar por defecto.
4. Click en **Next** hasta iniciar la instalación.
5. Al finalizar, **desmarca** la opción "Launch Stack Builder" (no la necesitamos) y click en **Finish**.

### Paso 3: Verificar la instalación

1. Buscar **pgAdmin 4** en el menú de inicio y abrirlo.
2. Se abrirá en **su propia ventana de aplicación** (no en tu navegador). Dependiendo de la versión, puede pedirte crear una **contraseña maestra** (master password) para proteger la app localmente — si no aparece este paso, no te preocupes, no es obligatorio en todas las versiones.
3. En el panel izquierdo, expandir **Servers > PostgreSQL 1x** (el número de versión puede variar).
4. Te pedirá la contraseña que creaste en el Paso 2 para el usuario `postgres`. Ingrésala y marca "Save Password" si quieres evitar escribirla cada vez.
5. Si logras ver la conexión expandida sin errores → ✅ instalación exitosa.
6. **(Opcional, verificación extra)** Expandir **Databases > postgres**, click en el botón **Query Tool** (ícono de una base de datos con un ▶ play en la barra de herramientas). Se abrirá una pestaña de consulta donde puedes ejecutar:
   ```sql
   SELECT version();
   ```
   Si te devuelve una fila con el texto "PostgreSQL 1x..." → confirmación adicional de que todo funciona.

> ℹ️ **Nota:** desde la versión 5 de pgAdmin, la aplicación dejó de depender del navegador externo y abre en su propia ventana independiente. Si por algún motivo la ventana no carga y decides abrir la URL manualmente en el navegador, es normal que tampoco conecte: pgAdmin ya no funciona así. Simplemente cierra el navegador y usa la ventana de la app que se abrió (revisa la barra de tareas si no la ves).

---

## 🐧 Instalación en Linux

Las instrucciones varían un poco según la distribución. Aquí las dos más comunes.

### Opción A: Ubuntu / Debian

**Paso 1: Instalar PostgreSQL**

```bash
sudo apt update
sudo apt install postgresql postgresql-contrib -y
```

**Paso 2: Verificar que el servicio esté activo**

```bash
sudo systemctl status postgresql
```

Deberías ver `active (running)` en verde. Si no está activo:

```bash
sudo systemctl start postgresql
sudo systemctl enable postgresql
```

**Paso 3: Configurar la contraseña del usuario `postgres`**

```bash
sudo -u postgres psql
```

Dentro de la consola de PostgreSQL (verás el prompt `postgres=#`), ejecuta:

```sql
ALTER USER postgres PASSWORD 'tu_contraseña_aquí';
```

Luego sal con:

```sql
\q
```

> 🔑 **Anota la contraseña** que elegiste, la necesitarás para conectar pgAdmin.

**Paso 4: Instalar pgAdmin 4**

```bash
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /etc/apt/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/etc/apt/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update
sudo apt install pgadmin4-desktop -y
```

> 📦 Nota: la carpeta `/etc/apt/keyrings/` es la ruta oficial vigente para guardar la llave del repositorio (versiones antiguas de esta guía usaban `/usr/share/keyrings/`, que también funciona, pero ya no es la recomendada). Si `/etc/apt/keyrings/` no existe en tu sistema, créala antes con `sudo mkdir -p /etc/apt/keyrings`.

Abrir pgAdmin desde el menú de aplicaciones (buscar "pgAdmin 4"). Al igual que en Windows, se abrirá en su **propia ventana** y no en el navegador — este es el comportamiento esperado desde pgAdmin 4 v5.

### Opción B: Fedora / RHEL

**Paso 1: Instalar PostgreSQL**

```bash
sudo dnf install postgresql-server postgresql-contrib -y
sudo postgresql-setup --initdb
sudo systemctl enable postgresql
sudo systemctl start postgresql
```

**Paso 2: Configurar la contraseña del usuario `postgres`**

```bash
sudo -u postgres psql
```

```sql
ALTER USER postgres PASSWORD 'tu_contraseña_aquí';
\q
```

**Paso 3: Instalar pgAdmin 4**

Seguir la guía oficial según versión de Fedora/RHEL: https://www.pgadmin.org/download/pgadmin-4-yum/

### Verificar la instalación (Linux)

1. Abrir **pgAdmin 4**.
2. Crear una contraseña maestra la primera vez que abras la app.
3. En el panel izquierdo, expandir **Servers**. Si no aparece un servidor por defecto, créalo:
   - Click derecho en **Servers > Register > Server...**
   - **General > Name:** `PostgreSQL Local`
   - **Connection > Host:** `localhost`
   - **Connection > Port:** `5432`
   - **Connection > Username:** `postgres`
   - **Connection > Password:** la que configuraste
4. Si conecta sin errores → ✅ instalación exitosa.

---

## ✅ Checklist final (Windows y Linux)

Antes de la clase, confirma que puedes:

- [ ] Abrir pgAdmin sin errores.
- [ ] Ver el servidor conectado en el panel izquierdo (candado abierto / sin ícono de error).
- [ ] Recordar tu contraseña del usuario `postgres`.

---

## 🆘 Problemas comunes

| Problema | Solución |
|---|---|
| No recuerdo la contraseña de `postgres` | En Windows: reinstalar y usar la misma contraseña. En Linux: usar `sudo -u postgres psql` para cambiarla (no requiere la contraseña anterior). |
| pgAdmin no conecta al servidor | Verificar que el servicio esté corriendo (`systemctl status postgresql` en Linux, o buscar "Services" en Windows y verificar que "postgresql-x64-1x" esté "Running"). |
| Puerto 5432 ocupado | Puede que ya tengas otra instalación previa de PostgreSQL. Revisa si ya tienes pgAdmin instalado antes de reinstalar. |
| En Linux, `sudo apt install` da error de paquete no encontrado | Ejecutar `sudo apt update` primero y reintentar. |
| "pgAdmin no abre en mi navegador" / el navegador no conecta | Es normal, no es un error. Desde pgAdmin 4 v5, la app abre en su propia ventana en vez del navegador. Si ves la ventana de pgAdmin con el árbol de servidores a la izquierda, la instalación está correcta. |

Si ninguna solución funciona, lo veremos en clase y te ayudamos en línea.
