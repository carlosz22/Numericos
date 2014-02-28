## Copyright (C) 2014 Carlos Zuluaga
## 
## OCTAVE
## Distribuido con la licencia Public GNU

## Nombre de archivo: biseccion
## Código .m para hallar x que f(x)=0 por el método de bisección

## Autor: Carlos Zuluaga 
## Creado: 2014-02-27
## PROCESOS NUMÉRICOS
## Universidad EAFIT

function [tabla] = biseccion (a,b,nmax,delta,tole)

format long

## Variables para que ingrese la primera vez
i=0;
p=delta+1;
error=tole+1;
q=a;

while i<nmax & p>delta & error>tole  %Condiciones para que el programa ingrese en el ciclo
  i=i+1; %Contador número de iteraciones
  tabla(i,1)=i; %Crea una matriz
  x=(a+b)/2; %Parte el intervalo
  ## Creando una Tabla (Matriz) que muestra los valores que tenga tabla
  tabla(i,2)=x; 
  y=funcion(x); %Evalúa la función en x
  tabla(i,3)=y;
  p=abs(y); %Evalúa el valor absoluto de la función en y
  error=abs(x-q); %Error como la diferencia de valor absoluto entre la x actual y la x anterior
  tabla(i,4)=error;
  q=x; %Guarda la x anterior
  ## Condicional: Si hay cambio de signo entre a y la mitad del intervalo cambia la b por el valor de x
  if funcion(a)*funcion(x)<0 
    b=x;
   else
     a=x;
 endif %Termina condicional
 
endwhile
endfunction

##FIN
