## Copyright (C) 2014 Carlos Zuluaga
## 
## OCTAVE
## Distribuido con la licencia Public GNU

## Nombre de archivo: biseccion

## Autor: Carlos Zuluaga 
## Creado: 2014-02-27
## PROCESOS NUMÉRICOS
## Universidad EAFIT

function [x] = biseccion (a,b,nmax,delta,tole)


## Variables para que ingrese la primera vez
i=0;
p=delta+1;
error=tole+1;
q=a;

while i<nmax & p>delta & error>tole  %Condiciones para que el programa ingrese en el ciclo
  i=i+1; %Contador número de iteraciones
  x=(a+b)/2; %Parte el intervalo
  y=funcion(x); %Evalúa la función en x
  p=abs(y); %Evalúa el valor absoluto de la función en y
  error=abs(x-q); %Error como la diferencia de valor absoluto entre la x actual y la x anterior
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
