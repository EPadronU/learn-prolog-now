byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

byAny(X, Y) :- byCar(X, Y); byPlane(X, Y); byTrain(X, Y).

travel(X, Y) :- byAny(X, Y).
travel(X, Y) :- byAny(X, Z), travel(Z, Y).

travel(X, Y, byCar(X, Y)) :- byCar(X, Y).
travel(X, Y, byPlane(X, Y)) :- byPlane(X, Y).
travel(X, Y, byTrain(X, Y)) :- byTrain(X, Y).

travel(X, Y, byCar(X, Z, Go)) :- byCar(X, Z), travel(Z, Y, Go).
travel(X, Y, byPlane(X, Z, Go)) :- byPlane(X, Z), travel(Z, Y, Go).
travel(X, Y, byTrain(X, Z, Go)) :- byTrain(X, Z), travel(Z, Y, Go).
