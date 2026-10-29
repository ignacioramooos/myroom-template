# Agent capability prompts

Estado: activo

Este archivo guarda modos reutilizables que los agentes pueden aplicar cuando una tarea necesita ayuda de ejecucion, aprendizaje o criterio de fundador.

## Regla principal

No copiar estos prompts mecanicamente salvo que el usuario lo pida. Usarlos como capacidades: detectar el caso, adaptar el modo al objetivo real, y entregar el siguiente movimiento util.

## Selector rapido

| Si aparece... | Usar modo | Resultado esperado |
| --- | --- | --- |
| Bloqueo para empezar una tarea | Task Paralysis Shatterer | Primer paso de menos de 1 minuto, con accion fisica concreta |
| Baja estimulacion o energia dispersa | Dopamine Menu Architect | Menu corto de activacion, trabajo y juego creativo |
| Necesidad de compania para sostener foco | Body Doubling Simulator | Sesion de 30 minutos con check-ins o rutina equivalente |
| Cambio dificil entre tareas | Context-Switching Guide | Ritual de 3 minutos para cerrar una energia y abrir otra |
| Tarea administrativa aburrida | Interest-Based Filter | Quest con recompensa y sentido personal |
| Estimacion de tiempo poco realista | Time-Blindness Auditor | Mapa de subtareas ocultas y deadline realista |
| Demasiados loops abiertos | Executive Function Externalizer | Now / Later / Trash y siguiente accion solo para Now |
| Aprender una habilidad rapido | Learning Curve Destroyer | Que aprender primero, que ignorar y un ejercicio de alto retorno |
| Practicar un concepto con errores reales | Real Error Simulator | Escenario, intento, preguntas socraticas y correccion gradual |
| Contenido confuso | Impossible Language Translator | Frase central, analogia cotidiana y prueba de comprension |
| Objetivo de aprendizaje con deadline | Personal Learning Path Architect | Ruta de 7 dias con tarea unica de 45 minutos por dia |
| Usuario cree dominar algo | Hidden Gap Detector | 5 preguntas simples que revelan brechas reales |
| Usuario explica lo estudiado | Forced Feynman Method | Interrupciones ante jargon, saltos logicos o simplificacion falsa |
| Decision, negocio, startup o monetizacion | Founder Thinking Mode | Decision realista, tradeoffs, riesgos y puntos ciegos |

## Reglas de uso

- Elegir un solo modo principal por respuesta, salvo que combinar dos reduzca carga cognitiva.
- Priorizar accion sobre explicacion. Si el usuario esta bloqueado, dar el primer movimiento antes de dar teoria.
- Si el modo implica seguimiento en el tiempo, solo prometer check-ins reales si la herramienta puede reactivar el hilo. Si no, entregar una rutina con tiempos y pedir al usuario que vuelva al checkpoint.
- En salud, cansancio o sobrecarga, registrar solo contexto operativo no sensible.
- En acciones externas, mantener las aprobaciones de `10_SECRETARIAT/permissions/approval-policy.md`.

## Executive function modes

### Task Paralysis Shatterer
Usar cuando el usuario mira una tarea y no puede empezar.
Prompt base:
"I am staring at [Task] and can't start. Break this down into "Ridiculously Small" steps that take less than 1 minute each. Give me the first step and tell me exactly where to put my hands to begin."

### Dopamine Menu Architect
Usar cuando hay baja estimulacion, dispersion o energia insuficiente para entrar en tarea.
Prompt base:
"I am feeling under-stimulated. Create a "Dopamine Menu" for me with 5-minute "Appetizers" (quick movement), 20-minute "Entrees" (deep work), and 10-minute "Sides" (creative play) to keep my brain engaged."

### Body Doubling Simulator
Usar cuando el usuario necesita compania operacional para sostener una tarea.
Prompt base:
"Act as my virtual body double for the next 30 minutes. I will tell you what I'm working on, and I want you to check in every 10 minutes to ask for a status update and keep my focus anchored."

### Context-Switching Guide
Usar cuando una tarea termino pero la mente queda pegada a esa energia.
Prompt base:
"I just finished [Task A] and need to start [Task B], but my brain is stuck. Design a 3-minute "Mental Palate Cleanser" routine to help me transition between these two different types of energy."

### Interest-Based Filter
Usar para tareas administrativas aburridas o evitadas.
Prompt base:
"I have a boring administrative task: [Task]. Help me gamify this by connecting it to my current hyper-fixation: [Interest]. Create a "Quest" structure where finishing the task unlocks a reward."

### Time-Blindness Auditor
Usar cuando una estimacion parece demasiado optimista o historicamente falsa.
Prompt base:
"I think [Project] will take 20 minutes, but it usually takes 2 hours. Help me "Time-Map" this by identifying the 3 hidden sub-tasks I always forget to account for so I can set a realistic deadline."

### Executive Function Externalizer
Usar cuando el usuario descarga preocupaciones, pendientes o loops abiertos.
Prompt base:
"My brain is full of "Open Loops." I will dump everything I'm worried about below. Categorize these into "Now," "Later," and "Trash," and then write a 1-sentence "Actionable Next Step" for only the "Now" items."

## Learning modes

### Learning Curve Destroyer
Usar cuando el objetivo es volverse funcional rapido en una habilidad.
Prompt base:
"You are a teacher who only has 4 hours with me and will never see me again. Your only objective is to make me functional in [SKILL] before the time runs out. Do not give me theory without practical use. Do not give me a list. Tell me: what to learn first, what to completely ignore, and what exercise, if I do it once, will already put me ahead of 70% of people who have been studying this for months."

### Real Error Simulator
Usar para aprender haciendo y corrigiendo errores.
Prompt base:
"Do not explain [CONCEPT] to me. Put me directly into a real situation where I would have to use it and would probably make a mistake. When I make a mistake, do not give me the answer. Ask me a question that forces me to discover where my reasoning is broken. Only give me the answer after I have tried at least two times. Repeat this cycle until I can get it right without hesitation."

### Impossible Language Translator
Usar cuando el contenido es denso, tecnico o confuso.
Prompt base:
"This content below is confusing to me. Before explaining it, tell me: what is the one sentence that, if I understand it, will make the rest make sense on its own? Explain only that sentence first. Use an everyday analogy, with no technical terms. Then ask me 3 questions that only someone who truly understood it would be able to answer. Do not continue until I pass all three."

### Personal Learning Path Architect
Usar para objetivos de aprendizaje con resultado y deadline.
Prompt base:
"My real goal is [GOAL]. It is not to learn [SKILL] in general. It is to achieve [SPECIFIC RESULT] within [DEADLINE]. I already know [WHAT YOU ALREADY MASTER]. Based on that, build me a 7-day learning path. Each day must include: one single task that fits within 45 minutes, a clear criterion so I know whether I did it correctly, and what not to do that day so I do not waste time."

### Hidden Gap Detector
Usar cuando el usuario cree dominar una habilidad y quiere una prueba dura.
Prompt base:
"I think I already master [SKILL]. I want you to prove me wrong. Ask me 5 questions that seem simple but expose the gaps of someone who has never truly gone deep. For every answer I give, tell me: what my answer reveals about what is still missing in my foundation."

### Forced Feynman Method
Usar despues de que el usuario estudia algo y quiere comprobar si lo entiende.
Prompt base:
"I just studied [TOPIC]. I am going to explain what I understood as if you were a 10-year-old child. While I explain, stop me every time I use jargon without knowing what it means, skip a step in the reasoning, or simplify so much that it becomes wrong. At the end, tell me exactly what those mistakes reveal about what is still not solid in my mind."

## Founder thinking modes

### Activation prompt
Usar cuando el usuario pide criterio de negocio, startup, producto, contratacion, monetizacion o una decision de fundador.
Prompt base:
"You are now in founder thinking mode. Operate like a first-principles builder who has already built and exited companies. When I give you a problem, avoid generic or surface-level advice. Instead, give me the exact decision a seasoned founder would make in the real world. Include key trade-offs, risks, and what most people typically overlook. Always begin your response with: "Here's what I'd actually do.""

### Stress Test Your Business
Prompt base:
"Enter founder thinking mode. I'm building: [brief 2-sentence description]. Analyze it like a Series A investor who has reviewed hundreds of pitches. Tell me what breaks first, what I'm missing, and what the top 3% of founders in this space consistently do differently. Be direct and uncompromising - don't soften the feedback."

### Find The Gap They Can't Fill
Prompt base:
"Enter founder thinking mode. My main competitor is [name them]. Break down their weaknesses, blind spots, and the positioning gap I can exploit right now. Give me 3 concrete moves that could make them irrelevant to my target customer within 12 months. Rank them by speed of execution and impact."

### Kill The Spiral In 10 Minutes
Prompt base:
"Enter founder thinking mode. I need to decide: [describe the decision]. Stress-test it through three lenses: (1) what breaks if I'm wrong, (2) what I'm optimizing for vs. what I should actually be optimizing for, and (3) what a founder who has already made this mistake would tell me. Don't optimize for comfort or validation - optimize for truth."

### Find The Money You're Missing
Prompt base:
"Enter founder thinking mode. My current offer is: [describe it]. Identify where I'm leaving money on the table and what I'm missing. Propose 3 new monetization angles I haven't tried, ranked by effort-to-return. Highlight which one I should test first, and give a simple 2-week validation plan that doesn't require rebuilding the product."

### Hire Slow. Spot Them In 30 Minutes
Prompt base:
"Enter founder thinking mode. I am hiring my first [role]. Give me 5 interview questions that separate A-players from people who only interview well. Then give me one red flag most founders notice only in month 3, and explain how to spot it in the first 30 minutes of the interview."

## Cierre para agentes

Al usar uno de estos modos en una tarea con expediente, registrar en `record.md`:
- modo usado
- por que era adecuado
- resultado producido
- si queda un checkpoint, aprobacion o siguiente paso
