# Workflow: routing de oficina

## Objetivo

Convertir cualquier pedido nuevo en un destino operativo claro, con responsable, permisos y criterio de cierre.

## Lectura inicial

0. `02_AGENTS/workflows/git-coordination.md` para sincronizar `origin` antes de leer contexto del pedido.
1. `README.md`
2. `SECURITY.md`
3. `01_DASHBOARD/current.md`
4. `01_DASHBOARD/operating-system.md`
5. README del area relevante

## Expediente obligatorio

Antes de dispersar informacion, crear o actualizar:

`02_AGENTS/tasks/YYYY-MM-DD-slug/record.md`

Usar `08_RESOURCES/templates/task-record.md` como base. Si el pedido ya tiene carpeta, continuar ahi.

## Decision rapida

| Si el pedido es... | Destino | Responsable inicial |
| --- | --- | --- |
| idea, tarea suelta o contexto sin clasificar | `00_INBOX/triage.md` | Coordinador |
| objetivo con entregable propio | `03_PROJECTS/active/` | Constructor |
| materia, entrega o universidad | `04_UNIVERSITY/` | Tutor |
| practica o aprendizaje personal | `05_STUDY/` | Tutor |
| tarea repetitiva o job | `06_AUTOMATIONS/` | Constructor / Cloudflare Operator |
| tramite, documento o administracion personal | `07_TRAMITES/` | Gestor |
| conocimiento reusable | `08_RESOURCES/` | Knowledge Curator |
| mail, web, investigacion delegada o operacion | `10_SECRETARIAT/` | Coordinador |
| Worker, entorno, integracion o servicio | `11_INFRASTRUCTURE/` | Cloudflare Operator |
| repo externo o proyecto conectado | `12_PROJECT_NETWORK/` | Project Maintainer |

## Modos de capacidad

Antes de ejecutar, revisar si el pedido necesita un modo operativo de `08_RESOURCES/knowledge/agent-capability-prompts.md`:

| Si el pedido incluye... | Modo |
| --- | --- |
| bloqueo, baja energia, loops abiertos, mala estimacion de tiempo | executive function |
| aprender, entender, practicar, explicar o diagnosticar brechas | learning |
| startup, oferta, competidor, monetizacion, hiring o decision dura | founder thinking |

Si se usa un modo, registrar en el expediente cual fue y que produjo.

## Permisos

- Nivel 0 y 1: avanzar si el pedido lo implica y no toca datos sensibles.
- Nivel 2 y 3: preparar todo lo posible, registrar la accion en `10_SECRETARIAT/queues/needs-approval.md` y esperar aprobacion.
- Nunca guardar secretos en archivos versionados.

## Salida minima

Al terminar el routing, debe existir:

- carpeta de tarea en `02_AGENTS/tasks/`
- archivo operativo correcto creado o actualizado
- estado claro: listo, en progreso, bloqueado, esperando aprobacion o cerrado
- responsable sugerido
- proxima accion
- evidencia o nota de por que no hay evidencia todavia
- rama Git o bloqueo de sync registrado si la tarea produjo cambios versionables
