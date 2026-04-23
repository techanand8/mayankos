[English](mcli.md) | [Español](mcli.es.md)

# Utilidad de Línea de Comandos MayankOS (mcli) - Versión 1.0.2

`mcli` es una herramienta práctica para realizar tareas comunes de mantenimiento en tu sistema MayankOS con un solo comando. A continuación, una guía de uso y comandos.

## Uso

Ejecuta la utilidad con un comando específico:

`mcli`

Si no se proporciona comando, muestra la ayuda.

## Comandos Disponibles (resumen)

| Comando       | Icono | Descripción                                                                                 | Ejemplo                              |
| ------------- | ----- | ------------------------------------------------------------------------------------------- | ------------------------------------ |
| cleanup       | 🧹    | Elimina generaciones antiguas (todas o manteniendo N últimas)                               | `mcli cleanup`                       |
| diag          | 🛠️    | Genera informe de diagnóstico en `~/diag.txt`                                               | `mcli diag`                          |
| list-gens     | 📋    | Lista generaciones de usuario y sistema                                                      | `mcli list-gens`                     |
| rebuild       | 🔨    | Reconstruye NixOS (con comprobaciones de seguridad previas)                                  | `mcli rebuild -v`                    |
| rebuild-boot  | 🔄    | Reconstruye para el próximo arranque (más seguro para cambios grandes)                       | `mcli rebuild-boot`                  |
| trim          | ✂️    | Ejecuta fstrim del sistema de archivos                                                       | `mcli trim`                          |
| update        | 🔄    | Actualiza el flake y reconstruye                                                             | `mcli update`                        |
| update-host   | 🏠    | Ajusta host y perfil en `flake.nix` (detección de GPU y validación)                          | `mcli update-host`                   |
| add-host      | ➕    | Crea un nuevo host (detección de GPU, `hardware.nix`, integración git)                       | `mcli add-host mi-host amd`          |
| del-host      | ➖    | Elimina un host existente                                                                     | `mcli del-host mi-host`              |
| doom install  | 🔥    | Instala Doom Emacs usando el script `get-doom`                                               | `mcli doom install`                  |
| doom status   | ✅    | Comprueba instalación y muestra versión                                                      | `mcli doom status`                   |
| doom remove   | 🗑️    | Elimina Doom Emacs con confirmación                                                          | `mcli doom remove`                   |
| doom update   | 🔄    | Actualiza paquetes/config de Doom (`doom sync`)                                              | `mcli doom update`                   |

## Opciones Avanzadas (rebuild/update)

- `--dry, -n`: simulación (no ejecuta)
- `--ask, -a`: confirmación interactiva
- `--cores N`: limita CPU usada en compilación
- `--verbose, -v`: salida detallada
- `--no-nom`: deshabilita nix-output-monitor

### Ejemplos
```bash
mcli update --dry
mcli rebuild --ask --verbose
mcli rebuild --cores 2
mcli update --dry --verbose --cores 4
```

## Notas

- Usa `update-host`, `add-host` y `del-host` para gestionar hosts.
- Doom Emacs: `install`, `status`, `remove`, `update` para ciclo de vida.
- Si tienes problemas, genera `mcli diag` y revisa los logs del sistema.


---
## 📘 Guía adicional de uso y aprendizaje
*En primer lugar, nos disculpamos sinceramente por cualquier error en esta documentación o si algo pareció repetitivo. Respetamos a todos los usuarios y comunidades, y nuestro único objetivo es proporcionar un entorno humilde y potente para que aprendas y construyas.*

### 🛠️ Instalación paso a paso
1. **Clonar el repositorio:** `git clone https://github.com/techanand8/mayankos.git ~/mayankos`
2. **Ejecutar el script de instalación:** `./install-mayankos.sh`
3. **Siga las instrucciones:** El script lo guiará de manera segura para configurar su nombre de host, perfil de GPU, zona horaria y distribución del teclado.
4. **Reinicie** una vez que `nixos-rebuild` finalice con éxito.

### 🎓 Lo que puedes aprender (Deep Work y DV)
Este entorno es una mina de oro para estudiantes y profesionales:
- **Verificación de diseño avanzada (DV):** Domine el arte de probar y verificar chips complejos utilizando herramientas de clase mundial como `slang`, `morty`, `cocotb` y `Renode`.
- **Diseño de silicio (RTL a GDSII):** Aprenda cómo se fabrican los chips físicos ejecutando flujos completos utilizando LibreLane y OpenROAD.
- **Dominio de NixOS:** Aprenda administración de sistemas reproducible y configuraciones declarativas.

### 🖥️ Gestión de entornos de escritorio
De forma predeterminada, **KDE Plasma**, **Hyprland** y **Niri** están habilitados para darle opciones. Si desea deshabilitar alguno de ellos para ahorrar espacio o recursos:
- **KDE Plasma:** Abra `modules/core/xserver.nix` y cambie `services.desktopManager.plasma6.enable = true;` a `false`.
- **Hyprland:** Abra `modules/core/packages.nix` y cambie `programs.hyprland.enable = true;` a `false`.
- **Niri:** Abra `hosts/<su-host>/variables.nix` y cambie `niriEnable = true;` a `false`.

Después de hacer los cambios, simplemente reconstruya su sistema:
`sudo nixos-rebuild boot --flake ~/mayankos/#<su-perfil>`
