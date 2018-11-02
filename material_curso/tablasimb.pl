% Datos Primaria

% Algunas abreviaturas convenientes
% Op (900,fx,no).
elemento:-write('elemento(Nombre,Simbolo,Numero_Atomico,Radiactivo,Clase,Estado_normal,Punto_fundido,Punto_ebullicion)').
elemento(Nombre) :- elemento(Nombre,_,_,_,_,_,_,_).
elemento(Nombre,Simbolo) :- elemento(Nombre,Simbolo,_,_,_,_,_,_).
elemento(Nombre,Simbolo,Valencia) :- elemento(Nombre,Simbolo,Valencia,_,_,_,_,_).

% elemento(Nombre,Simbolo,Numero_Atomico,Radiactivo,Clase,Estado_normal,Punto_fundido,Punto_ebullicion)
elemento(actinio,'Ac',89,radiactivo,metal,solido,1050,3200).
elemento(aluminio,'Al',13,no_radioactivo,metal,solido,660,2467).
elemento(americio,'Am',95,radiactivo,metal,solido,994,2607).
elemento(antinomia,'Sb',51,no_radioactivo,metal,solido,631,1750).
elemento(argon,'Ar',18,no_radioactivo,noble,gas,-189,-186).
elemento(arsenico,'As',33,no_radioactivo,nometal,solido,817,613).
elemento(astato,'A',85,radiactivo,halogeno,solido,302,337).
elemento(bario,'Ba',56,no_radioactivo,alcalino_tierra,solido,725,1640).
elemento(berilio,'Be',4,no_radioactivo,alkaline_earth,solido,1278,2970).
elemento(bismuto,'Bi',83,no_radioactivo,metal,solido,271,1560).
elemento(boro,'B',5,no_radioactivo,nometal,solido,2079,2550).
elemento(cadmio,'Cd',48,no_radioactivo,metal,solido,321,765).
elemento(bromo,'Br',35,no_radioactivo,halogeno,liquido,-7,59).
elemento(calcio,'Ca',20,no_radioactivo,alcalino_tierra,solido,839,1484).
elemento(carbono,'C',6,no_radioactivo,nometal,solido,3550,4827).
elemento(cerio,'Ce',58,no_radioactivo,raro_tierra,solido,798,3246).
elemento(cesio,"C",55,no_radioactivo,metal,solido,28,669).
elemento(cloro,'Cl',17,no_radioactivo,halogeno,gas,-101,-35).
elemento(cromo,'Cr',24,no_radioactivo,metal,solido,1857,2672).
elemento(cobalto,'Co',27,no_radioactivo,metal,solido,1495,2870).
elemento(cobre,'Cu',29,no_radioactivo,metal,solido,1083,2567).
elemento(disprosio,'Dy',99,no_radioactivo,raro_tierra,solido,1412,2567).
elemento(erbio,'Re',68,no_radioactivo,raro_tierra,solido,1529,2868).
elemento(europio,'Eu',63,no_radioactivo,raro_tierra,solido,822,1.597).
elemento(fluor,'F',9,no_radioactivo,halogeno,gas,-220,-188).
elemento(francio,'Fr',87,radioctive,metal,solido,27,677).
elemento(gadolinio,'Gd',87,no_radioactivo,raro_tierra,solido,1313,3273).
elemento(galio,'Ga',31,no_radioactivo,metal,solido,30,2403).
elemento(germanio,'Ge',32,no_radioactivo,metal,solido,937,2830).
elemento(oro,'Au',79,no_radioactivo,metal,solido,1064,2808).
elemento(hafnio,'Hf',72,no_radioactivo,metal,solido,2227,4602).
elemento(helio,'He',2,no_radioactivo,noble,gas,-272,-269).
elemento(holmio,'Ho',67,no_radioactivo,raro_tierra,solido,1470,2720).
elemento(hidrogeno,'H',1,no_radioactivo,no_metal,gas,-259,-252).
elemento(indio,'In',49,no_radioactivo,metal,solido,157,2080).
elemento(yodo,"I",53,no_radioactivo,halogeno,solido,113,184).
elemento(iridio,'Ir',77,no_radioactivo,metal,solido,157,2080).
elemento(hierro,'Fe',26,no_radioactivo,metal,solido,1535,2750).
elemento(cripton,'Cr',36,no_radioactivo,noble,gas,-157,-152).
elemento(lantano,'La',57,no_radioactivo,raro_tierra,solido,918,3464).
elemento(plomo,'Pb',82,no_radioactivo,metal,solido,327,1740).
elemento(litio,'Li',3,no_radioactivo,metal,solido,180,1342).
elemento(lutecio,'Lu',71,no_Radiactivo,raro_tierra,solido,1633,3402).
elemento(magnesio,'Mg',12,no_radioactivo,alcalino_tierra,solido,649,1090).
elemento(manganeso,'Mn',25,no_radioactivo,metal,solido,1244,1962).
elemento(mercurio,'Hg',80,no_radioactivo,metal,liquido,-39,356).
elemento(molibdeno,'Mo',42,no_radioactivo,metal,solido,2617,4612).
elemento(neodimio,'Nd',60,no_radioactivo,raro_tierra,solido,1021,3074).
elemento(neon,'Ne',10,no_radioactivo,noble,gas,-249,-246).
elemento(neptunio,'Np',93,radiactivo,metal,solido,640,3902).
elemento(niquel,'Ni',28,no_radioactivo,metal,solido,1453,2732).
elemento(niobio,'Nb',41,no_radioactivo,metal,solido,2468,4742).
elemento(nitrogeno,'N',7,no_radioactivo,nometal,gas,-210,-196).
elemento(osmio,'Os',76,no_radioactivo,metal,solido,3045,5027).
elemento(oxigeno,'O',8,no_radioactivo,nometal,gas,-218,-183).
elemento(paladio,'Pd',46,no_radioactivo,metal,solido,1554,3140).
elemento(fosforo,'P',15,no_radioactivo,nometal,solido,44,280).
elemento(platino,'Pt',78,no_radioactivo,metal,solido,1772,3827).
elemento(plutonio,'Pu',94,radiactivo,metal,solido,641,3232).
elemento(polonio,'Po',84,radiactivo,metal,solido,254,962).
elemento(potasio,'K',19,no_radioactivo,alcali,solido,63,760).
elemento(praesydium,'Pr',59,no_radioactivo,raro_tierra,solido,3520,3212).
elemento(prometio,'Pm',61,radiactivo,raro_tierra,solido,1042,3000).
elemento(radio,'Ra',88,radiactivo,alcalino_tierra,solido,700,1140).
elemento(radon,'Rn',86,radiactivo,noble,gas,-71,-62).
elemento(renio,'Re',75,no_radioactivo,metal,solido,3180,5627).
elemento(rodio,'Rh',45,no_radioactivo,metal,solido,1966,3272).
elemento(rubidio,'Rb',37,no_radioactivo,metal,solido,39,686).
elemento(rutenio,'Ru',44,no_radioactivo,metal,solido,2310,3900).
elemento(samario,'Sm',62,no_radioactivo,raro_tierra,solido,1074,1794).
elemento(escandio,'Sc',21,no_radioactivo,metal,solido,1541,2831).
elemento(selenio,'Se',34,no_radioactivo,no_metal,solido,217,685).
elemento(silicio,'Si',14,no_radioactivo,no_metal,solido,1410,2355).
elemento(plata,'Ag',47,no_radioactivo,metal,solido,962,2212).
elemento(sodio,'Na',11,no_radioactivo,alcali,solido,98,883).
elemento(estroncio,'Sr',38,no_radioactivo,alcalino_tierra,solido,769,1384).
elemento(azufre,'S',16,no_radioactivo,nometal,solido,113,445).
elemento(tantalio,'Ta',73,no_radioactivo,metal,solido,2996,5425).
elemento(tecnecio,'Tc',43,radiactivo,metal,solido,2172,4877).
elemento(teluro,'Te',52,no_radioactivo,metal,solido,449,990).
elemento(terbio,'Tb',65,no_radioactivo,raro_tierra,solido,1356,3230).
elemento(talio,'Tl',81,no_radioactivo,metal,solido,303,1457).
elemento(torio,'J',90,radiactivo,metal,solido,1750,4790).
elemento(tulio,'Tm',69,no_radioactivo,raro_tierra,solido,1545,1950).
elemento(estanio,'Sn',50,no_radioactivo,metal,solido,232,2270).
elemento(titanio,'Ti',22,no_radioactivo,metal,solido,1660,3267).
elemento(tungsteno,'W',74,no_radioactivo,metal,solido,3410,5660).
elemento(uranio,'U',92,radiactivo,metal,solido,1132,3818).
elemento(vanadio,'V',23,no_radioactivo,metal,solido,1890,3380).
elemento(xenon,'Xe',54,no_radioactivo,noble,gas,-112,-107).
elemento(iterbio,'Yb',70,no_radioactivo,raro_tierra,solido,819,1196).
elemento(itrio,'Y',39,no_radioactivo,raro_tierra,solido,1552,3338).
elemento(zinc,'Zn',30,no_radioactivo,metal,solido,420,907).
elemento(circonio,'Zr',40,no_radioactivo,metal,solido,1852,4377).

metalico(metal).
metalico(alcalino).
metalico(alcalino_tierra).
no_metalico(raro_tierra).
no_metalico(no_metal).
no_metalico(halogeno).
no_metalico(noble).

% engrupo(AN,Gp) es verdadero si el elemento con el numero atomico AN esta disponible en Gp
engrupo(AN,'O') :- member(AN,[2,10,18,36,54,86]).
engrupo(AN,'IA') :- member(AN,[1,3,11,19,37,55,87]).
engrupo(AN,'AI') :- member(AN,[4,12,20,38,56,88]).
engrupo(AN,'IIIB') :- (AN> 56,AN <72); (AN> 88,AN <103); AN = 21; AN = 39.
engrupo(AN,'IVB') :- member(AN,[22,40,72,104]).
engrupo(AN,'VB') :- member(AN,[23,41,73,105]).
engrupo(AN,'VIB') :- AN = 24; AN = 42; AN = 74.
engrupo(AN,'VIIB') :- AN = 25; AN = 43; AN = 75.
engrupo(AN,'VIIB') :- AN = 26; AN = 44; AN = 76.
engrupo(AN,'VIII') :- AN = 27; AN = 45; AN = 77.
engrupo(AN,'VIII') :- AN = 28; AN = 46; AN = 78.
engrupo(AN,'IB') :- AN = 29; AN = 47; AN = 79.
engrupo(AN,'IIB') :- AN = 30; AN = 48; AN = 80.
engrupo(AN,'IIIA') :- member(AN,[5,13,31,49,81]).
engrupo(AN,'IVA') :- member(AN,[6,14,32,50,82]).
engrupo(AN,'VA') :- member(AN,[7,15,33,51,83]).
engrupo(AN,'VIA') :- member(AN,[8,16,34,52,84]).
engrupo(AN,'VIIA') :- member(AN,[9,17,35,53,85]).


% esgrupo(G) es verdadero si G es un grupo de la tabla periodica.
esgrupo('O').
esgrupo('IA').
esgrupo('IB').
esgrupo('AI').
esgrupo('IIB').
esgrupo('IIIA').
esgrupo('IIIB').
esgrupo('IVA').
esgrupo('IVB').
esgrupo('VA').
esgrupo('VB').
esgrupo('VIA').
esgrupo('VIB').
esgrupo('VIIA').
esgrupo('VIIB').
esgrupo('VIII').

% grupo(AN) - imprime el nombre del grupo los elementos con numero atomico AN.
grupo(AN) :- engrupo(AN,Grupo),print(grupo = Grupo),nl.

% enperiodo(AN,PN) es verdadero si el elementocon el numero atomico es AN esta disponible Plazo PN
enperiodo(AN,1) :- AN = 1; AN = 2.
enperiodo(AN,2) :- enrango(AN,3,10).
enperiodo(AN,3) :- enrango(AN,11,18).
enperiodo(AN,4) :- enrango(AN,19,36).
enperiodo(AN,5) :- enrango(AN,37,54).
enperiodo(AN,6) :- enrango(AN,55,86).
enperiodo(AN,7) :- enrango(AN,87,109).

%periodo(AN) - periodo impresion del elementoAN
periodo(AN) :- enperiodo(AN,Periodo),print(periodo = Periodo),nl.

% Porque ha tecleado mal =< como <=
enrango(AN,Bajo,Alto) :- AN>=Bajo,AN=<Alto.

imprimir_elemento(Nombre) :- elemento(Nombre,Simbolo,Numero_Atomico,Rad,Clase,Normalmente,Funde_a,Hierve_a),
	nl,write(nombre: Nombre),nl,
	write(simbolo: Simbolo),nl,
	write(numero_atomico: Numero_Atomico),nl,
	write(radioactividad: Rad),nl,print(clase: Clase),nl,
	write(normalmente: Normalmente),nl,
	write(funde_a: Funde_a),nl,
	write(hierve_a: Hierve_a),nl,
	enperiodo(Numero_Atomico,Periodo),engrupo(Numero_Atomico,Grupo),
	write(periodo: Periodo),nl,write(grupo: Grupo),nl.

imprime_tabla_periodica :- esgrupo(G),nl,write(G),nl,write(':	'),
	elemento(_,Simb,An),
	engrupo(An,G),
	write(Simb),write(' '),
	fail.




