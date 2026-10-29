# Sistema operativo de MyRoom

Este archivo define como usar MyRoom como oficina digital: capturar, decidir, ejecutar, verificar y dejar continuidad.

## Principio central

Cada pedido es un objetivo. La respuesta util no es solo explicar: es avanzar hasta un resultado verificable, o registrar con precision que bloqueo impide avanzar.

## Flujo principal

1. Pasar por `02_AGENTS/workflows/git-coordination.md`: fetch/pull de `origin`, rama por tarea si hay trabajo paralelo, y registro de bloqueos si no se puede sincronizar.
2. Capturar el pedido en `00_INBOX/` si todavia no tiene destino claro.
3. Crear o actualizar una carpeta de expediente en `02_AGENTS/tasks/YYYY-MM-DD-slug/`.
4. Clasificarlo usando `02_AGENTS/workflows/office-routing.md`.
5. Elegir un modo de `08_RESOURCES/knowledge/agent-capability-prompts.md` si hay bloqueo, aprendizaje, decision de fundador o necesidad de reducir carga cognitiva.
6. Crear o actualizar el archivo operativo del area correcta.
7. Ejecutar el trabajo posible con los permisos disponibles.
8. Verificar el resultado con evidencia proporcional al riesgo.
9. Actualizar `record.md` dentro de la carpeta de tarea.
10. Ejecutar `02_AGENTS/workflows/continuous-improvement.md` para registrar aprendizajes reutilizables.
11. Actualizar `01_DASHBOARD/current.md` si cambia el foco, estado, bloqueo o proxima accion.
12. Registrar una nota en `02_AGENTS/logs/` cuando haya avance, decision, bloqueo o cambio estructural relevante.
13. Commit y push de la rama de tarea cuando haya cambios versionables.

## Areas operativas

| Tipo de trabajo | Lugar principal | Archivo inicial recomendado |
| --- | --- | --- |
| Captura sin clasificar | `00_INBOX/` | `capture.md` o `triage.md` |
| Estado general | `01_DASHBOARD/` | `current.md` |
| Trabajo de agentes | `02_AGENTS/` | `tasks/`, `registry/agents.md` y `logs/` |
| Proyecto personal | `03_PROJECTS/` | `active/` con plantilla de proyecto |
| Universidad | `04_UNIVERSITY/` | `courses/` o `deliverables/` |
| Estudio | `05_STUDY/` | `plans/` o `sessions/` |
| Automatizacion | `06_AUTOMATIONS/` | `ideas/`, `scripts/`, `runbooks/` |
| Tramite | `07_TRAMITES/` | `pending/` |
| Recurso reusable | `08_RESOURCES/` | `knowledge/`, `links/`, `templates/` |
| Trabajo delegado | `10_SECRETARIAT/` | `inbox/requests.md` o `queues/` |
| Infraestructura | `11_INFRASTRUCTURE/` | README del servicio o runbook |
| Otro repo/proyecto | `12_PROJECT_NETWORK/` | `projects.md` y `improvements.md` |

## Ritmo de trabajo

- Diario: revisar `01_DASHBOARD/current.md`, `00_INBOX/triage.md` y `10_SECRETARIAT/daily-brief.md`.
- Semanal: usar `01_DASHBOARD/weekly-review.md` para limpiar frentes, cerrar pendientes y elegir prioridades.
- Por tarea: abrir el README del area, actualizar el archivo especifico y cerrar con evidencia.
- Por expediente: toda tarea tiene una carpeta en `02_AGENTS/tasks/` con `record.md` y `evidence/`.
- Por Git: toda tarea empieza con sync de `origin` y termina con commit/push si hubo cambios versionables.
- Por modo: si una tarea necesita desbloqueo, aprendizaje o founder thinking, usar `08_RESOURCES/knowledge/agent-capability-prompts.md` y registrar el modo aplicado.
- Por aprendizaje: si una tarea deja informacion reutilizable, actualizar `08_RESOURCES/knowledge/` o el workflow/plantilla correspondiente.

## Criterio de cierre

Una tarea esta cerrada cuando tiene:

- estado final
- resultado o entregable
- evidencia de verificacion
- decisiones o supuestos importantes
- proximo paso si queda seguimiento
- ubicacion del contexto actualizado
- carpeta propia en `02_AGENTS/tasks/` actualizada
- rama, commit y push registrados si hubo cambios versionables
- revision de mejora continua completada
