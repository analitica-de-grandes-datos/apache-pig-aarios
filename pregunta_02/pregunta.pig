/*
Pregunta
===========================================================================

Ordene el archivo `data.tsv`  por letra y valor (3ra columna). Escriba el
resultado separado por comas.

Escriba el resultado a la carpeta `output` del directorio actual. Para la 
evaluación, pig sera eejcutado ejecutado en modo local:

$ pig -x local -f pregunta.pig

     >>> Escriba el codigo del mapper a partir de este punto <<<
*/
a = LOAD 'data.tsv' USING PigStorage('\t')
        AS(letra:CHARARRAY,
        fecha:CHARARRAY,
        numero:INT);

b = ORDER a BY letra, numero;
STORE b INTO 'output' USING PigStorage(',');