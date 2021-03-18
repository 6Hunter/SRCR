% Trabalho 1 de Sistemas de Representa��o de Conhecimento e Racioc�nio
% Grupo 15

% ---------------------------------------------------------------------
% Base de Conhecimento
% ---------------------------------------------------------------------
% Base de conhecimento com informa��o sobre utente, centro de sa�de, staff e vacina��o Covid

:- dynamic(utente/10).
:- dynamic(centro_sa�de/5).
:- dynamic(staff/4).
:- dynamic(vacina��o_Covid/5).

% ---------------------------------------------------------------------
% Extens�o do predicado utente: #Idutente, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], #CentroSa�de -> {V,F}



% ---------------------------------------------------------------------
%Extens�o do predicado centro_sa�de: #Idcentro, Nome, Morada, Telefone, Email -> {V,F}

% ---------------------------------------------------------------------
% Extens�o do predicado staff: #Idcentro, Nome, email -> {V,F}

% ---------------------------------------------------------------------
% Extens�o do predicado vacina��o_Covid: #Staf, #utente, Data, Vacina, Toma -> {V,F}
