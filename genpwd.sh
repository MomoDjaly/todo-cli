#!/bin/bash

# Script pour demander le nom
echo " Quel est ton prenom ? "
read prenom
# Script pour demander l'age
echo " Quel est ton age ? "
read age
# Script pour enoncer le nom et l'age de la personne pour l'identifier
echo " Bonjour $prenom, tu as $age et "
# Script qui montre si tu est majeur ou mineur
if [ $age -ge 18 ];then
  echo " Tu est majeur "
else
  echo " Tu est mineur "
fi




