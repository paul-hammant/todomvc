#!/bin/sh

find architecture-examples -name lib | xargs rm -rf
find architecture-examples -name libs | xargs rm -rf
find labs/architecture-examples -name lib | xargs rm -rf
find labs/architecture-examples -name libs | xargs rm -rf

cloc --quiet --csv architecture-examples/angularjs | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Angular,/' | sed 's/Angular,files/framework,files/' | sed 's/code,\"http:\/\/cloc.*/code/' > loc.csv 

cloc --quiet --csv architecture-examples/agilityjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Agility,/' >> loc.csv

cloc --quiet --csv architecture-examples/backbone | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Backbone,/' >> loc.csv

cloc --quiet --csv architecture-examples/canjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Canjs,/' >> loc.csv

cloc --quiet --csv architecture-examples/closure | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Closure,/' >> loc.csv

cloc --quiet --csv architecture-examples/dojo | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Dojo,/' >> loc.csv

cloc --quiet --csv architecture-examples/emberjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Emberjs,/' >> loc.csv

cloc --quiet --csv architecture-examples/jquery | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/JQuery,/' >> loc.csv

cloc --quiet --csv architecture-examples/knockback | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Knockback,/' >> loc.csv

cloc --quiet --csv architecture-examples/knockoutjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Knockout,/' >> loc.csv

cloc --quiet --csv architecture-examples/spine | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Spine,/' >> loc.csv

cloc --quiet --csv architecture-examples/yui | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/YUI,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/batman | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Batman,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/cujo | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Cujo,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/derby | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Derby,/' >> loc.csv 

cloc --quiet --csv labs/architecture-examples/dermis | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Dermis,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/dijon | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Dijon,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/duel | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Duel,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/epitome | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Epitome,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/extjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Extjs,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/maria | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Maria,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/meteor | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Meteor,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/montage | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Montage,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/o_O | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/o_O,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/olives | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Olives,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/plastronjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Plastronjs,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/puremvc | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Puremvc,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/rappidjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Rappidjs,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/sammyjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Sammyjs,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/socketstream | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Socketstream,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/somajs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Somajs,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/stapes | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Stapes,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/thorax | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Thorax,/' >> loc.csv

cloc --quiet --csv labs/architecture-examples/troopjs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Troopjs,/' >> loc.csv

cloc --quiet --csv vanilla-examples/vanillajs | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/Vanilla-JS,/' >> loc.csv

cloc --quiet --csv vanilla-examples/hardcoded | grep -Ev 'files.*' | sed '/,CSS,/d' | sed '/^$/d' | sed 's/^/HardCoded,/' >> loc.csv

