# Workflow: coordinacion Git multiagente

## Objetivo

Garantizar que cada agente empiece desde `origin`, trabaje aislado, deje commits trazables y pueda convivir con otros agentes sin pisar cambios.

## Regla cero

Antes de pensar en la tarea, leer contexto de dominio o editar archivos, pasar por este sync gate:

1. Confirmar el checkout: `git rev-parse --show-toplevel`.
2. Ver estado y rama: `git status --short --branch`.
3. Traer referencias remotas: `git fetch origin`.
4. Actualizar la base:
   - Si se va a trabajar en la rama actual y esta limpia: `git pull --ff-only`.
   - Si hay otros agentes o el trabajo es nuevo: crear rama desde `origin/main` con `codex/YYYY-MM-DD-slug`.

Si el paso 4 no puede completarse, detener la ejecucion normal y registrar el bloqueo exacto en `record.md`. No resolver pisando cambios ajenos.

## Rama por tarea

Usar una rama por expediente:

`codex/YYYY-MM-DD-slug`

La rama debe corresponder a una sola carpeta:

`02_AGENTS/tasks/YYYY-MM-DD-slug/`

Excepciones permitidas:

- El usuario pidio trabajar explicitamente en `main`.
- El agente esta continuando la misma tarea y la misma rama.
- La tarea es un merge/handoff de repo y su objetivo es sincronizar `main`.

## Como trabajar sin conflictos

- Editar solo los archivos necesarios para el objetivo.
- No reordenar, reformatear ni limpiar archivos ajenos sin necesidad.
- No usar `git reset --hard`, `git checkout --` ni borrados masivos sin aprobacion explicita.
- Si aparecen cambios locales que el agente no hizo, tratarlos como trabajo ajeno y preservarlos.
- Si dos agentes necesitan el mismo archivo, cada uno debe registrar el alcance en su expediente y resolver via merge/rebase antes de cerrar.
- Antes de modificar archivos de alto trafico como `AGENTS.md`, `01_DASHBOARD/current.md`, `02_AGENTS/workflows/`, `08_RESOURCES/knowledge/user-operating-profile.md` o colas de `10_SECRETARIAT/`, hacer un fetch nuevo y revisar el diff local.

## Cierre Git obligatorio

Antes de cerrar una tarea con cambios versionables:

1. Ejecutar `git status --short`.
2. Revisar los cambios propios con `git diff`.
3. Ejecutar `git fetch origin`.
4. Integrar la base remota:
   - En rama de tarea: rebasar o mergear contra `origin/main` si corresponde.
   - En `main`: usar solo fast-forward o resolver explicitamente.
5. Staggear solo los archivos del objetivo.
6. Crear un commit con mensaje claro, por ejemplo:

   `Update MyRoom git coordination workflow`

7. Pushear la rama:

   `git push -u origin codex/YYYY-MM-DD-slug`

8. Registrar en `record.md`:
   - rama
   - hash de commit
   - comandos de verificacion
   - push realizado o bloqueo exacto
   - archivos tocados

## Si el push falla

- Ejecutar `git fetch origin`.
- Revisar si la rama remota avanzo.
- Rebase/merge solo si el conflicto esta dentro del alcance de la tarea.
- Si el conflicto toca trabajo ajeno o sensible, registrar bloqueo y pedir decision.
- No forzar push salvo aprobacion explicita del usuario.

## Evidencia minima

Cada expediente debe poder responder:

- De que commit o rama remota partio el trabajo.
- Que rama uso el agente.
- Que archivos cambio.
- Que verificacion corrio.
- Que commit/push dejo disponible.
