directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

existsDirectTrain(X, Y) :- directTrain(X, Y).
existsDirectTrain(X, Y) :- directTrain(Y, X).

route(From, To, Route) :- route(From, To, [], Response), reverse(Response, Route).
route(From, To, Acc, [To, From| Acc]) :- existsDirectTrain(From, To), \+ member(To, Acc).
route(From, To, Acc, Route) :- existsDirectTrain(From, Scale), \+ member(Scale, Acc), route(Scale, To, [From|Acc], Route).
