einstein(X) :-
   presolucion(X),
   member(casa(roja,ingles,_,_,_),X),
   member(casa(_,sueco,perro,_,_),X),
   member(casa(_,danes,_,te,_),X),
   vecina_derecha(casa(blanca,_,_,_,_),casa(verde,_,_,_,_),X),
   member(casa(verde,_,_,cafe,_),X),
   member(casa(_,_,pajaro,_,pallmall),X),
   member(casa(amarilla,_,_,_,dunhill),X),
   X = [_,_,casa(_,_,_,leche,_),_,_],
   X = [casa(_,noruego,_,_,_)|_],
   vecina(casa(_,_,_,_,blends),casa(_,_,gato,_,_),X),
   vecina(casa(_,_,_,_,dunhill),casa(_,_,caballo,_,_),X),
   member(casa(_,_,_,cerveza,bluemasters),X),
   member(casa(_,aleman,_,_,prince),X),
   vecina(casa(_,noruego,_,_,_),casa(azul,_,_,_,_),X),
   vecina(casa(_,_,_,_,blends),casa(_,_,_,agua,_),X),
   member(casa(_,_,pez,_,_),X).

presolucion([casa(_,_,_,_,_),
             casa(_,_,_,_,_),
             casa(_,_,_,_,_),
             casa(_,_,_,_,_),
             casa(_,_,_,_,_)]).

vecina_derecha(A,B,[B,A|_]).
vecina_derecha(A,B,[_|C]) :- vecina_derecha(A,B,C).

vecina(A,B,[A,B|_]).
vecina(A,B,[B,A|_]).
vecina(A,B,[_|C]) :- vecina(A,B,C).
