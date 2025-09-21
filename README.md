# 📘 Proyecto: Analizador Léxico en Flex

## 🎯 Objetivo
Elaborar un analizador léxico en **lex/flex** que reconozca los componentes léxicos pertenecientes a las clases definidas en clase.

---

## 📝 Descripción
El analizador léxico deberá reconocer y clasificar los siguientes componentes léxicos:

| Clase | Descripción |
|-------|-------------|
| 0 | **Palabras reservadas** (ver tabla) |
| 1 | **Constantes enteras**: dígitos del 0 al 9, con signo opcional `+` o `-`. |
| 2 | **Identificadores**: en minúsculas, pueden contener `_` y dígitos solo al final. |
| 3 | **Operadores de asignación** (ver tabla). |
| 4 | **Símbolos especiales**: `$ % ( ) { } [ ] ; .` |
| 5 | **Operadores lógicos** (ver tabla). |
| 6 | **Constantes reales**: parte entera y decimal separadas por `@`, signo opcional. También notación exponencial con `@@`. <br>Ejemplos: `15@85`, `0@61@@-17`. |
| 7 | **Constantes cadena**: inician con `¿` y terminan con `?`. No pueden tener salto de línea. |
| 8 | **Operadores aritméticos** (ver tabla). |
| 9 | **Operadores de relación** (ver tabla). |

🔹 **Notas importantes:**
- El analizador léxico recibirá como entrada un **archivo fuente** indicado desde la línea de comandos.  
- Los **delimitadores** pueden ser: espacios, tabuladores, saltos de línea o el inicio de otro componente.  
- Los **tokens** tendrán dos campos:  
  - `clase`  
  - `valor`  

---

## 📂 Tablas de símbolos y literales
- **Identificadores** → Tabla de símbolos con: posición, nombre y tipo (tipo inicial = `-1`).  
- **Constantes cadena** → Tabla de literales con: posición y valor.  
- **Constantes reales** → Tabla de literales con: posición y valor.  
- **Constantes enteras** → Su valor es el número en sí.  
- **Reservadas, operadores y símbolos** → Su valor será la posición en su catálogo.  

---

## 💡 Reglas adicionales
- Los **comentarios** se descartan y estarán entre comillas `“ ”`.  
- Al finalizar el análisis, el programa mostrará:  
  - Tabla de símbolos  
  - Tablas de literales  
  - Secuencia de tokens  
- Los **errores** deben indicar la línea y permitir continuar el análisis.  

---

## 📑 Catálogos

### 🔹 Palabras reservadas
| Valor | Palabra   | Valor | Palabra   |
|-------|-----------|-------|-----------|
| 0     | cadena    | 7     | para      |
| 1     | caso      | 8     | predet    |
| 2     | entero    | 9     | salir     |
| 3     | flotante  | 10    | select    |
| 4     | hacer     | 11    | si        |
| 5     | mientras  | 12    | vacio     |
| 6     | ocaso     |       |           |

### 🔹 Operadores de asignación
| Valor | Operador |
|-------|----------|
| 0     | =        |
| 1     | *=       |
| 2     | /=       |
| 3     | +=       |
| 4     | -=       |
| 5     | %=       |
| 6     | <<=      |
| 7     | >>=      |
| 8     | &=       |
| 9     | ^=       |
| 10    | \|=      |

### 🔹 Operadores aritméticos
| Valor | Operador |
|-------|----------|
| 0     | ¬+¬      |
| 1     | ¬-¬      |
| 2     | ¬*¬      |
| 3     | ¬/¬      |
| 4     | ¬^¬      |
| 5     | ¬%¬      |

### 🔹 Operadores lógicos
| Valor | Operador | Significado |
|-------|----------|-------------|
| 0     | `\\`     | AND         |
| 1     | `//`     | OR          |
| 2     | \|\|     | NOT         |

### 🔹 Operadores relacionales
| Valor | Operador | Significado        |
|-------|----------|--------------------|
| 0     | `::`     | Igual              |
| 1     | `¿:`     | Diferente          |
| 2     | `>`      | Mayor              |
| 3     | `<`      | Menor              |
| 4     | `>:`     | Mayor o igual      |
| 5     | `<:`     | Menor o igual      |

---

## ⚙️ Entregables
1. **Documento** con:
   - Descripción del problema.  
   - Expresiones regulares de cada clase.  
   - Propuesta de solución y fases: análisis, diseño, implementación.  
   - Definición exacta de tablas y tokens.  
   - Técnica de búsqueda e inserción.  
   - Instrucciones para correr el programa.  
   - Conclusiones de los integrantes.  

2. **Código fuente en Flex**, documentado con:
   - Objetivo.  
   - Autores.  
   - Fecha.  
   - Explicación de cada función.  
   - Sangría clara y legible.  

3. **Entrega final** en la plataforma educativa como `.rar` o `.zip`.  
   - Puede ser individual o en equipo de 2.  
   - Solo un integrante subirá el archivo.  

📅 **Fecha de entrega:** 30 de septiembre de 2025.  

---
