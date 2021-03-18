% Trabalho 1 de Sistemas de Representação de Conhecimento e Raciocínio
% Grupo 15

% ---------------------------------------------------------------------
% Base de Conhecimento
% ---------------------------------------------------------------------
% Base de conhecimento com informação sobre utente, centro de saúde, staff e vacinação Covid

:- dynamic(utente/10).
:- dynamic(centro_saúde/5).
:- dynamic(staff/4).
:- dynamic(vacinação_Covid/5).

% ---------------------------------------------------------------------
% Extensão do predicado utente: #Idutente, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], #CentroSaúde -> {V,F}



% ---------------------------------------------------------------------
%Extensão do predicado centro_saúde: #Idcentro, Nome, Morada, Telefone, Email -> {V,F}

% ---------------------------------------------------------------------
% Extensão do predicado staff: #Idcentro, Nome, email -> {V,F}

% ---------------------------------------------------------------------
% Extensão do predicado vacinação_Covid: #Staf, #utente, Data, Vacina, Toma -> {V,F}
