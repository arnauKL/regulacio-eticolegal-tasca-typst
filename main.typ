// Aquest fitxer és part dels deures de l'assignatura "Regulació ético-legal en l'enginyeria biomèdica"
// Copyright (C) 2025 Arnau K. Deprez
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.


// Configuracions del document
#set text(
  lang: "ca",
  hyphenate: true,
  size: 11pt,
  font: "New Computer Modern"
)

#set par(
  first-line-indent: 1em,
  justify: true
)

#set page(margin: 3cm)

#show link: it => underline[#emph(it.body)]

// Per fer que les l geminades surtin millor
#show "l·l": it => [#text(font: "New Computer Modern Math")[l·l]]

// Per escriure respostes
#let resposta(body) = {
  text(rgb("#001689"))[
    #v(-1.5em)
    \
  _Resposta:_ \
    #body
  ]
  v(2em)
}

// X no deixarme'n cap sense respondre
#show "NO RESPOSTA": [#text(red)[NO RESPOSTA]]
#show "software": "programari"

#let titol = [
  #align(center)[
    #text(size: 10pt)[ Regulació Ètico-legal en l'Enginyeria Biomèdica]
    #v(-10pt)
    = Prova d'avaluació continuada
    
    Propietat intel·lectual
    #v(1em)
  ]
  
  #grid(
    column-gutter: 1fr,
    columns: 2,
    [Professor: Dídac López \
    Estudiant: Arnau K. Deprez],
    [#datetime.today().display("[day] de Novembre, [year]")],
  )
  
]

// ------------------------- Document -------------------------

#v(-1em)
#image("EPS.png", width: 30%)
#titol
#v(3em)

*1. Protegir una obra requereix necessàriament el seu registre? Respon de manera raonada segons els apunts (10%)*

#resposta()[
  Segons la definició de propietat intel·lectual @ministeri, no cal registrar una obra per tal de protegir-la. Es considera que la propietat és de l'autor pel sol fet de crear-la:
  
  #quote(attribution: "¿Cuándo una obra o prestación está protegida?, Ministerio de Cultura")[_Se protegen desde el momento de su creación, recibiendo los titulares la plena protección de la ley desde ese momento y sin que se exija el cumplimiento de ningún requisito formal_]

  L'autor té drets de caràcter personal i patrimonial, consistents en la plena disposició i dret exclusiu a l'explotació de l'obra, sense més limitacions que les establertes a la llei. La inscripció en el Registre de la Propietat Intel·lectual és un tràmit voluntari que serveix de mitjà de prova que acredita qui és l'autor i a qui corresponen els drets d'explotació.

  Amb això es pot veure, llavors, que el fet de registar l'obra només és una manera de tenir _prova_ de que la propietat intel·lectual pertany a una persona o institució, un instrument útil per defensar els drets d'autor. 
]

2. És necessària l'autorització per utilitzar obres i prestacions difoses a internet? Respon de manera raonada segons els apunts (10%)

#resposta()[
  En general, sí que és necessària l'autorització, perquè el fet que una obra o prestació estigui difosa a internet no significa que sigui d'ús lliure @ministeriInternet. La publicació en línia no altera la protecció que atorga la propietat intel·lectual, i el titular continua tenint els drets exclusius de reproducció, distribució, comunicació pública i transformació.

  Ara bé, tal com s'explica als apunts, molts continguts publicats a internet inclouen una llicència explícita (per exemple, _Creative Commons_ en obres artístiques o documentals, _GPL_, _MIT_ en programari). En aquests casos, l'autorització ja està incorporada en la pròpia llicència, i l'usuari pot fer servir l'obra sempre que respecti les condicions establertes.

  Tot i així, cal llegir la llicència especificada pel titular. Si hi ha una llicència oberta, es té autorització per a certs usos (modificar, redistribuir, fer obres derivades, etc.), però només dins dels límits que marca.
]

3. Comenta aquestes noticies d'acord amb els continguts treballats a classe (25%):

- Notícia 1: #link(" https://elpais.com/tecnologia/2025-03-01/por-que-laliga-se-enfrenta-a-un-gigante-de-internet-por-la-pirateria-tiran-nuestras-notificaciones-a-la-papelera.html", "Por qué LaLiga se enfrenta a un gigante de internet por la piratería: “Tiran nuestras notificaciones a la papelera”")

- Notícia 2: #link("https://archive.ph/XH3ai", "No sin mis tres rayas: así es la encarnizada batalla de Adidas por poseer su icónico logo")

#resposta()[
  === Notícia 1: LaLiga _vs_ Cloudflare

  LaLiga afirma que el valor de la seva explotació comercial depèn de controlar l'accés als partits. És per això que LaLiga utilitza tecnologia per detectar emissions il·legals i enviar notícies als intermediaris. Aquest mecanisme s'emmarca en el model _notice and action_, propi del dret digital europeu.
  
  Cal aclarir que Cloudflare no allotja contingut, sinó que actua com a intermediari tècnic: CDN, protecció DDoS, encriptació, i ocultació d'IP.
  
  Segons la normativa europea, els intermediaris tenen una responsabilitat limitada: no són responsables del contingut que no controlen però han d'actuar amb diligència quan reben notificacions de contingut il·lícit verificat.
  
  El nucli del conflicte és si Cloudflare posa mitjans per evitar la pirateria (segons Cloudflare), o ignora les notificacions i protegeix emissores il·legals (segons LaLiga).
  
  Un punt especialment _delicat_ és que LaLiga obté permisos judicials per bloquejar IPs associades a emissions pirates. Però, com que Cloudflare agrupa molts dominis sota les mateixes IP, es produeixen bloqueigs massius que afecten pàgines legítimes, incloent webs comercials, tecnològiques i fins i tot serveis essencials.
  
  En aquest cas, la mesura és efectiva contra la pirateria, però molt poc proporcional, perquè genera danys col·laterals massius. Això evidencia un problema estructural: atacar la pirateria mitjançant bloqueigs indiscriminats pot tenir un cost alt en termes de funcionament tècnic d'Internet i drets dels usuaris.
  
  Cloudflare defensa que encripta el trànsit i oculta IPs per protegir la privacitat i seguretat dels seus clients. Aquí veiem un conflicte de valors: protecció de drets d'autor (LaLiga) vs privacitat, neutralitat de la xarxa i seguretat (Cloudflare).
  
  Això introdueix el concepte de víctimes col·laterals: quan un model de bloqueig no és fi, pot provocar pèrdua d'accés a serveis, interrupció d'activitats econòmiques, problemes de reputació i denegació de serveis essencials. La lluita contra la pirateria està afectant milers de webs que no tenen res a veure amb el futbol.
  
  El conflicte entre LaLiga i Cloudflare és un exemple dels reptes sobre la propietat intel·lectual:
  - Dificultat de perseguir la pirateria en temps real
  - Fricció/Contradicció entre drets fonamentals i drets de propietat intel·lectual (això també ho vam veure a la primera part de l'assignatura amb la Dra. Bonmatí).
  - Indefinició sobre el grau de responsabilitat dels intermediaris
  - Mesures judicials tecnològicament imperfectes
  - Dany col·lateral sobre tercers
  
  La situació demostra que la lluita contra la pirateria no pot recaure només en bloqueigs massius ni en exigir als intermediaris més del que poden legalment o tècnicament fer. Es requereixen solucions judicials, reguladores i tècniques més fines i equilibrades.
  
  === Notícia 2: Les tres ratlles d'Adidas

  La notícia exposa un cas paradigmàtic sobre els límits de la protecció de marques, especialment quan el signe que es vol registrar és una forma geomètrica simple, com les icòniques tres ratlles d'Adidas.
  
  Un dels punts clau que apareix a la notícia és que la llei de marques imposa obstacles importants a l'hora de registrar formes geomètriques senzilles. Això és coherent i realista: les marques no poden monopolitzar formes bàsiques perquè això limitaria el dret dels competidors a dissenyar lliurement, creant un impacte negatiu en la competència i en la creativitat del mercat.
  
  Les formes simples tendeixen a ser percebudes com elements decoratius, no pas com a identificadors d'origen empresarial.
  
  Els tribunals europeus ja havien conclòs el 2019 que les tres ratlles careixien de caràcter distintiu si s'utilitzen de manera massa genèrica o amb descripcions massa àmplies.
  
  La notícia explica la segona via que tenen aquestes marques per poder protegir signes simples: la distintivitat adquirida.
  Segons la normativa, si una forma, tot i ser senzilla, ha estat utilitzada de manera intensa, continuada i reconeixible, pot arribar a ser percebuda pel públic com un signe que identifica un origen comercial clar. Aquest cas és típic en marques famoses, i a classe se sol comentar amb exemples com el contorn de l'ampolla de Coca-Cola.
  
  L'article destaca que Adidas intenta demostrar justament això: que les tres ratlles no són meres línies, sinó un element identitari, reconegut universalment com a símbol de la marca. Però els tribunals no sempre coincideixen en aquesta valoració, perquè requereix provar empíricament aquesta associació en la ment del consumidor.
  
  La notícia també mostra que el dret de marques no és uniforme a tot el món. Alemanya, l'EUIPO i un tribunal de Nova York arriben a conclusions oposades sobre exactament el mateix signe.
]

4. Quina és la utilitat de les llicències GPL i quins són els seus límits? Podries proporcionar un o dos exemples que il·lustren els beneficis d'utilitzar un programari que has desenvolupat i llicenciat sota la GPL? (10%)

#resposta()[
  Les llicències GPL garanteixen les quatre llibertats fonamentals del programari lliure explicades a classe (dret de còpia i distribució del codi font original, dret de modificació, distribució de modificacions, transitivitat de la llicència). El codi original es pot modificar per ús personal sense cap obligació però la utilitat de la GPL és que en cas de voler fer-ne difusió del programa amb les modificacions, aquest també haurà d'estar sota la mateixa llicència.

  Això implica que el codi font també s'haurà de compartir, assegurant així que l'esforç _retorna_ a la comunitat.
  
  Pel que fa a les seves limitacions, n'hi ha vàries que s'han de tenir en compte sobretot per fer servir programari sota aquesta llicència.
  
  Hi ha l'inconvenient de la incompatibilitat amb altres llicències: no es pot fer servir codi que no tingui llicències obertes en la modificació del codi font ja que després no es podrà distribuir sota la GPL. D'altra banda, una altra limitació pel desenvolupador que fa servir codi font sota la GPL és que no pot comercialitzar ni triar cap altre tipus de llicència pel seu programari.

  Per tal d'il·lustrar els beneficis d'utilitzar un programari desenvolupat i llicenciat sota la GPL en mostro dos exemples que faig servir en el meu dia a dia.

  - #link("https://github.com/torvalds/linux?tab=License-1-ov-file#readme","Linux"): El nucli Linux és un dels casos més emblemàtics de l'èxit de la llicència GPL. El fet d'estar sota aquesta llicència garanteix que qualsevol persona o empresa pugui estudiar el codi, modificar-lo i redistribuir-ne versions pròpies, sempre que mantingui les mateixes llibertats als usuaris finals. Això ha permès crear una comunitat global de desenvolupadors que col·labora constantment en la millora del nucli i ha facilitat que empreses com IBM, Red Hat o Canonical hi contribueixin, incrementant-ne la qualitat i la seguretat. L'efecte _copyleft_ de la GPL també evita que derivats del nucli es privatitzin, assegurant que totes les millores tornin a la comunitat i es mantingui un ecosistema obert i sostenible.

  - #link("https://gitlab.gnome.org/GNOME", "GNOME"):  L'escriptori GNOME és un altre exemple de projecte que es beneficia plenament del model GPL. En estar sota aquesta llicència, GNOME pot integrar aportacions de voluntaris i empreses sense perdre el control sobre la llibertat del seu codi. La GPL garanteix que totes les extensions, eines i aplicacions derivades continuïn sent lliures, fet que promou un ecosistema coherent i col·laboratiu. A més, la possibilitat que qualsevol pugui adaptar GNOME a les seves necessitats (des de distribucions Linux fins a organitzacions que en creen _forks_ interns) impulsa la innovació i assegura que el projecte evolucioni de manera transparent i compartida.
]

5. Heu trobat aquest joc a un conegut repositori de programari a internet: (25%)
https://sourceforge.net/projects/stockfish.mirror/
        1. Quin tipus de llicència té? Com ho saps? 
        2. Teniu accés al codi font? (quina URL?) 
        3. Teniu dret a modificar-lo i fer una nova versió sense notificar-ho a ningú?.  
        4. El podeu comercialitzar, tant el original com la versió que heu modificat, d'alguna manera en una distribució?
        5.  I si ho feu com un joc accessible en línia? 

#resposta()[
  1. El joc _Stockfish_ està llicenciat sota la GPLv3. Això es pot comprovar directament al repositori de _SourceForge_, on s'indica explícitament la llicència del projecte.
  
  2. Sí, tenim accés al codi font. Es pot descarregar desde l'apartat _"Files"_ del mateix repositori: #link("https://sourceforge.net/projects/stockfish.mirror/files/","Codi font de Stockfish").
  
  3. Tenim dret a modificar el codi i crear una nova versió sense notificar-ho a ningú sempre que no se'n faci cap distribució del nou programa resultant. Si distribuïm la versió modificada, llavors la llicència GPL exigeix que proporcionem també el codi font complet i que el publiquem sota la mateixa llicència (la _màgia_ del _copyleft_).
  
  4. Sí, podem comercialitzar tant la versió original com una versió modificada. La GPLv3 no prohibeix la comercialització. L'única condició és que, en distribuir el programa, hem de garantir l'accés al codi font complet i mantenir la mateixa llicència per als derivats.

  5. També el podem oferir com un joc accessible en línia. El model de negoci pot basar-se en l'accés al servei (servidors, interfície, prestacions addicionals, etc.). Ara bé, si distribuïm el programa o parts del seu codi com a descàrrega, continuen aplicant-se les obligacions de la GPL. 
  
    Si només oferim l'accés com a servei, sense distribuir el binari ni el codi, la GPL no obliga a publicar el codi modificat. Tot i això, si en algun moment distribuïm el programa, caldrà complir de nou els requisits de la llicència.
]




6. Feu una reflexió i doneu una resposta raonada a la pregunta , i segons l'article esmentat (20%):

La propietat intel·lectual pot protegir diferents balls i coreografies de TikTok?
Podeu consultar #link("https://www.linkedin.com/posts/sianachez_la-propiedad-intelectual-puede-proteger-activity-6967468988243005440-jixU/?utm_source=share&utm_medium=member_desktop","l'article de linkedIn que acompanya l'enunciat").

#resposta()[
  La propietat intel·lectual sí que pot protegir balls i coreografies de TikTok, però només en determinades condicions i amb certs límits importants.
  
  Un dels requisits essencials és l'originalitat. Com hem comentat a l'inici de la PAC, segons el ministeri de cultura, tota obra es pot protegir des del moment de la seva creació. Perquè una coreografia sigui protegible com a obra, ha de complir amb el requisit fonamental del dret d'autor: ha de ser original, és a dir, reflectir l'aportació creativa personal del seu autor.
  
  Tot i així, per la naturalesa de les coreografies que proliferen en aquesta plataforma no sempre trobem que estigui tan clar. No n'hi ha prou que sigui un conjunt de moviments simples o rutines típiques. Molts _trending dances_ de TikTok són combinacions molt breus, estereotipades o poc elaborades, i això fa difícil considerar-les obres coreogràfiques protegides.
  
  Per tal d'aprofundir una mica més en aquesta diferenciació cal aclarir que les coreografies estan protegides com a obres escèniques (igual que el teatre o la dansa). Això requereix que, entre d'altres, la creació tingui una estructura reconeixible, existeixi una seqüència organitzada de moviments i la coreografia pugui ser expressada o fixada en un suport (vídeo, anotació coreogràfica, etc.).
  
  Els vídeos de TikTok compleixen aquest últim punt perquè fixen l'obra en un suport.
  
  === Difusió, autorització i infracció
  
  Si la coreografia és original i protegida la reproducció, adaptació o reutilització per part d'altres usuaris requeriria autorització de l'autor. Si algú copia el ball exactament i el penja, podria estar infringint drets d'autor (encara que a la pràctica quasi mai es persegueixi judicialment).
  
  No obstant, si els moviments són simples, curts o típics, no hi ha prou protecció i no hi ha infracció.

  === Limitacions
  
  Encara que jurídicament sigui possible, hi ha obstacles. Moltes coreografies són col·lectives, improvisades o d'autoria difusa.
  
  TikTok preveu en les seves condicions que cada usuari és responsable del que publica, però la plataforma es protegeix limitant la seva responsabilitat. En la pròpia aplicació hi ha eines que fomenten la recreació i la imitació (_remix_, _duet_, _stitches_), cosa que xoca amb la lògica restrictiva del dret d'autor tradicional.
  
  
  Com assenyala l'article de referència, moviments simples o gestos utilitzats amb finalitats comercials poden ser més aviat matèria de propietat industrial (marca, trade dress...). Això diu clarament que no qualsevol moviment és protegible per drets d'autor.
  
  === Conclusió personal
  
  Sí, la propietat intel·lectual pot protegir balls i coreografies de TikTok, però només si són suficientment originals, estructurats i identificables com a obres coreogràfiques.
  
  Moltes de les danses virals de TikTok, per ser massa simples, breus o estereotipades, no arriben al nivell de protecció, mentre que les coreografies professionals o clarament creatives sí que podrien estar protegides. Hi ha nombrosos casos de coreògrafs que han aplicat els seus drets i han limitat l'ús de la seva coreografia en concerts.
  
  La dificultat real no és la norma, sinó aplicar-la en un ecosistema digital basat en la imitació constant, cosa que genera un espai gris on la llei i la pràctica social no sempre coincideixen.
]


#pagebreak()

=== Nota sobre el codi font:

El codi _Typst_ utilitzat per generar aquest document és obra pròpia i es distribueix sota la llicència GPLv3. El contingut del document (respostes i comentaris) està subjecte als drets d'autor dels texts originals citats i no es pot reproduir sense el respecte a aquests drets. \
#link("https://github.com/arnauKL/regulacio-eticolegal-tasca-typst", "Enllaç al codi font")

#bibliography("fonts.bib", title: "Fonts consultades")