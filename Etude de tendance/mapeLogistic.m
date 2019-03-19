% On vas creer une fonction qui retourne la mape du modele exponentiel
% modifie comptabilis� � partir des donn�es PIB Belgique & RFA.
% On a besoin de donner les valeurs de alpha, beta et gamma calcul�es �
% l'aide de la methode des 3 pts sur Excel. 
% x=[0.032028309,0.796217279,0.006943227]
function mape=mapeLogistic(x)
    read_variables; % lecture des variables � partir du fichier Excel.
    mape=0;
    len=length(y);
    for i=1:len
        mape=mape+100*abs(1/(x(1)*x(2)^i+x(3))-y(i))/y(i);
    end
    mape=mape/len;
end