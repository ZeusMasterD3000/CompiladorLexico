%{
/* Código en C que se inserta tal cual en el analizador */
#include <stdio.h>
%}

/* Definiciones de patrones regulares */
asig [* / + \- & ^ \|]
letM [A-Z]
letm [a-z]
dig [0-9]
/*Palabras reservadas*/
PALRES cadena|caso|entero|flotante|hacer|mientras|ocaso|para|predet|salir|select|si|vacio
/*Constantes Enteras con signo o sin signo*/
CTEINT (\+|\-)?{dig}+
/*Identificadores*/
IDENT {letm}+(\_{letm}*)*{dig}*
/*Operadores de Asignacion*/
OPASIG ({asig}?|'%'|<<|>>)?=
/*Simbolos Especiales*/
SIMSPE '$'|'%'|'('|')'|'['|']'|'{'|'}'|';'|'.'
/*Operadores Logicos*/
OPLOG "\\"|"//"|"||"
/*Constante Real*/
CTEREAL (\+|-)?{dig}+@{dig}+(@@(\+|-)?{dig}+)?
/*Constante Cadena*/
CTESTR ¿[^¿?\n]*\?
/*Operadores Aritmeticos*/
OPART ¬(\+|\-|\*|\/|\^|\%)¬
/*Operadores de Relacion*/
OPREL ((:|¿):)|((<|>)(:)?)


