% Trabalho 1 de Sistemas de Representa��o de Conhecimento e Racioc�nio
% Grupo 15

% ---------------------------------------------------------------------
% Base de Conhecimento
% ---------------------------------------------------------------------

% ---------------------------------------------------------------------
% Flags iniciais

:- set_prolog_flag(discontiguous_warnings,off).
:- set_prolog_flag(single_var_warnings,off).
:- set_prolog_flag(unknown,fail).

% ---------------------------------------------------------------------
% Base de conhecimento com informa��o sobre utente, centro de sa�de, staff e vacina��o Covid

:- op(900,xfy,'::').
:- dynamic utente/10.
:- dynamic centro_sa�de/5.
:- dynamic staff/4.
:- dynamic vacina��o_Covid/5.
:- dynamic fases/4.


% ---------------------------------------------------------------------
% Extens�o do predicado utente: #Idutente, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], #CentroSa�de -> {V,F,D}

utente(1, '50577343592', 'Henrique Severo Espargosa', 19-09-1963, 'heriqueespargosa@gmail.com', '925660961', 'Avenida da Liberdade', 'Barbeiro', ['Artrite Reumat�ide'], '1').
utente(2, '76660664525', 'K�vin Brand�o Outeiro', 30-10-1995, 'kevinouteiro@gmail.com', '926067176', 'Rua da Liberdade', 'Bartender', ['Parkinson'], '2').
utente(3, '19053925216', 'Anabel Pederneiras Batata', 28-04-1919, 'anabelbatata@gmail.com', '923462300', 'Rua 25 de Abril', 'Reformado', ['Insufici�ncia card�aca', 'Diabetes'], '1').
utente(4, '56156406212', 'Isabelly Prada Couto', 11-07-1981, 'isabellycouto@gmail.com', '925865324', 'Avenida 25 de Abril', 'Desempregado', ['SIDA'], '3').
utente(5, '85012667165', 'Alessia Trindade Farias', 06-10-1923, 'alessiafarias@gmail.com', '922100314', 'Rua do Carmo', 'Reformado', ['Escoliose'], '1').
utente(6, '21435653330', 'Dafne Barreno Delgado', 05-01-1980, 'dafnedelgado@gmail.com', '923154251', 'Avenida do Carmo', 'M�dico', ['Obesidade'], '2').
utente(7, '55257724030', 'Am�lia Barrico Cerqueira', 25-03-1968, 'ameliacerqueira@gmail.com', '929156442', 'Rua do Pontido', 'Advogado', [], '2').
utente(8, '32321985798', 'Jaden Carregueiro Bernardes', 27-12-1936, 'jadenbernardes@gmail.com', '927466477', 'Rua Nossa Senhora de F�tima', 'Enfermeiro', ['P�s-Transplante de �rg�o'], '3').
utente(9, '74899994834', '�lia Paranhos Sobreira', 22-05-1953, 'eliasobreira@gmail.com', '920712898', 'Rua dos Pe�es', 'Professor', ['Doen�a Cel�aca'], '1').
utente(10, '61341191054', 'Aura Dourado Filipe', 15-01-1998, 'aurafilipe@gmail.com', '921342600', 'Rua Nova de Santa Cruz', 'Estudante', [], '3').



% ---------------------------------------------------------------------
% Extens�o do predicado centro_sa�de: #Idcentro, Nome, Morada, Telefone, Email -> {V,F,D}

centro_sa�de(1, 'Centro de Sa�de do Alto Minho', 'Lugar de Barreiras, Mazedo, Mon��o', '255533079', 'centrodesaudeMoncao@gmail.com').
centro_sa�de(2, 'Centro de Sa�de do Baixo Ribatejo', 'Rua da Cevadeira, Castanheira do Ribatejo, Vila Franca de Xira', '252745329', 'centrodesaudeXira@gmail.com').
centro_sa�de(3, 'Centro de Sa�de de Lisboa', 'Rua de S. Ciro, Lapa, Lisboa', '259440886', 'centrodesaudeLapa@gmail.com').


% ---------------------------------------------------------------------
% Extens�o do predicado staff: #Idstaff, #Idcentro, Nome, Email -> {V,F,D}

staff(1, 1, 'Jacinto Imperial Enes', 'jacintoenes@gmail.com').
staff(2, 2, 'Leonor Cunha Bou�a', 'leonorbouca@gmail.com').
staff(3, 3, 'Iara Amarante Pe�anha', 'iarapecanha@gmail.com').
staff(4, 1, 'Raj Malta Varanda', 'rajvaranda@gmail.com').
staff(5, 2, 'Aleksandr Loio Simas', 'aleksandrsimas@gmail.com').
staff(6, 3, 'Runa Sequeira Porto', 'ruanporto@gmail.com').
staff(7, 1, 'Igor Figueir� Lucas', 'igorlucas@gmail.com').
staff(8, 2, 'Vladislav Bernerdes Quirino', 'vladislavquirino@gmail.com').
staff(9, 3, 'Emanuel Regodeiro Rodovalho', 'regodeirorodovalho@gmail.com').
staff(10 ,1, 'Gen�sia Rego Barcelos', 'genesiabarcelos@gmail.com').


% ---------------------------------------------------------------------
% Extens�o do predicado vacina��o_Covid: #Staff, #utente, Data, Vacina, Toma -> {V,F,D}

vacina��o_Covid(1, 3, 29-03-2021, 'Pfizer', 1).
vacina��o_Covid(5, 8, 09-02-2021, 'Pfizer', 1).
vacina��o_Covid(4, 5, 02-04-2021, 'Pfizer', 1).
vacina��o_Covid(9, 8, 09-02-2021, 'Pfizer', 2).
vacina��o_Covid(2, 1, 28-03-2021, 'Pfizer', 1).


% ---------------------------------------------------------------------
% Extens�o do predicado fases: Fases, Data_Inicial, Data_Final, Caracter�sticas -> {V,F,D}

fases(1, 01-02-2021, 28-02-2021, 'Ser m�dico ou Enfermeiro').
fases(2, 01-03-2021, 31-03-2021, 'Ter mais de 80 ou ter doen�as cr�nicas').
fases(3, 01-04-2021, 31-04-2021, 'Toda a popula��o').


% ---------------------------------------------------------------------
%	Invariantes
% ---------------------------------------------------------------------
% Invariante Estrutural ( N�o permitir a inser��o de conhecimento repetido)

+utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de) :: (solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), (utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)), S), 
                                                                                                                          comprimento(S, N),
                                                                                                                          N == 1).

+centro_sa�de(Idcentro, Nome, Morada, Telefone, Email) :: (solucoes((Idcentro, Nome, Morada, Telefone, Email), (centro_sa�de(Idcentro, Nome, Morada, Telefone, Email)), S), 
														   comprimento(S, N), 
														   N == 1).

+staff(Idstaff, Idcentro, Nome, Email) :: (solucoes((Idstaff, Idcentro, Nome, Email), (staff(Idstaff, Idcentro, Nome, Email)), S), 
										   comprimento(S, N), 
										   N == 1).

+vacina��o_Covid(Staff, Utente, Data, Vacina, Toma) :: (solucoes((Staff, Utente, Data, Vacina, Toma), (vacina��o_Covid(Staff, Utente, Data, Vacina, Toma)), S),
													    comprimento(S, N), 
													    N == 1). 


% ---------------------------------------------------------------------
% Invariante Referencial -> N�o admitir mais que um utente com o mesmo ID

+utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de) :: (solucoes(Id, (utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)), S), 
																														  comprimento(S, N), 
																														  N == 1).


% ---------------------------------------------------------------------
% Invariante Referencial -> N�o admitir mais que um centro_sa�de com o mesmo ID

+centro_sa�de(Idcentro, Nome, Morada, Telefone, Email) :: (solucoes(Idcentro, (centro_sa�de(Idcentro, Nome, Morada, Telefone, Email)), S), 
														   comprimento(S, N), 
														   N == 1).


% ---------------------------------------------------------------------
% Invariante Referencial -> N�o admitir mais que um staff com o mesmo ID

+staff(Idstaff, Idcentro, Nome, Email) :: (solucoes(Idstaff, (staff(Idstaff, Idcentro, Nome, Email)), S), 
										   comprimento(S, N),
										   N == 1).


% ---------------------------------------------------------------------
% Invariante Referencial -> N�o admitir vacina��o_Covid marcadas a utentes ou staff que n�o existem

+vacina��o_Covid(Staff, Utente,_,_,_) :: (utente(Utente,_,_,_,_,_,_,_,_,_), staff(Staff,_,_,_)).


% ---------------------------------------------------------------------
% Invariante Referencial -> N�o admitir vacina��o_Covid da fase 2 marcadas a utentes que n�o possuem a vacina��o_Covid da fase 1

+vacina��o_Covid(_,Utente,_,_,2) :: (vacina��o_Covid(_,Utente,_,_,1)).


% ---------------------------------------------------------------------
% Invariante Referencial -> N�o admitir a remo��o de utentes ou staff que j� existam vacina��o_Covid com os mesmos

-utente(Id,_,_,_,_,_,_,_,_,_) :: (solucoes(Id, vacina��o_Covid(_,Id,_,_,_), S), 
								  comprimento(S, N),
								  N == 0).

-staff(Idstaff,_,_,_) :: (solucoes(Idstaff, vacina��o_Covid(Idstaff,_,_,_,_), S),
						   comprimento(S, N),
						   N == 0).


% --------------------------------------------------------------------
%	Predicados de registo/remo��o de utentes, centro de sa�de, staff e vacina��o Covid
% --------------------------------------------------------------------

% Extens�o do predicado que permite o registo de um utente: Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de -> {V,F,D}

registoUtente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de) :- evolucao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)).


% --------------------------------------------------------------------
% Extens�o do predicado que permite o registo de um centro_sa�de: Idcentro, Nome, Morada, Telefone, Email -> {V,F,D}

registoCentroSaude(Idcentro, Nome, Morada, Telefone, Email) :- evolucao(centro_sa�de(Idcentro, Nome, Morada, Telefone, Email)).


% --------------------------------------------------------------------
% Extens�o do predicado que permite o registo de um staff: Idstaff, Idcentro, Nome, Email -> {V,F,D}

registoStaff(Idstaff, Idcentro, Nome, Email) :- evolucao(staff(Idstaff, Idcentro, Nome, Email)).


% --------------------------------------------------------------------
% Extens�o do predicado que permite o registo de uma vacina��o_Covid: Staff, Utente, Data, Vacina, Toma -> {V,F,D}

registoVacinacaoCovid(Staff, Utente, Data, Vacina, Toma) :- evolucao(vacina��o_Covid(Staff, Utente, Data, Vacina, Toma)).


% --------------------------------------------------------------------
% Extens�o do predicado que permite a remo��o de um utente: Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de -> {V,F,D}

remocaoUtente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de) :- involucao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)).


% --------------------------------------------------------------------
% Extens�o do predicado que permite a remo��o de um centro_sa�de: Idcentro, Nome, Morada, Telefone, Email -> {V,F,D}

remocaoCentroSaude(Idcentro, Nome, Morada, Telefone, Email) :- involucao(centro_sa�de(Idcentro, Nome, Morada, Telefone, Email)).


% --------------------------------------------------------------------
% Extens�o do predicado que permite a remo��o de um staff: Idstaff, Idcentro, Nome, Email -> {V,F,D}

remocaoStaff(Idstaff, Idcentro, Nome, Email) :- involucao(staff(Idstaff, Idcentro, Nome, Email)).


% --------------------------------------------------------------------
% Extens�o do predicado que permite a remo��o de uma vacina��o_Covid: Staff, Utente, Data, Vacina, Toma -> {V,F,D}

remocaoVacinacaoCovid(Staff, Utente, Data, Vacina, Toma) :- involucao(vacina��o_Covid(Staff, Utente, Data, Vacina, Toma)).



% --------------------------------------------------------------------
%	Predicados de evolu��o e involu��o de conhecimento
% --------------------------------------------------------------------
% Extens�o do predicado que permite a evolu��o do conhecimento: T -> {V,F,D}

evolucao(Termo) :- solucoes(Invariante, +Termo::Invariante, Lista),
				   insercao(Termo),
				   teste(Lista).

insercao(Termo) :- assert(Termo).
insercao(Termo) :- retract(Termo), !, fail.

teste([]).
teste([R|LR]) :- R,
				 teste(LR).


% --------------------------------------------------------------------
% Extens�o do predicado que permite a involu��o do conhecimento: T -> {V,F,D}

involucao(Termo) :- Termo,
					solucoes(Invariante, -Termo::Invariante, Lista),
					remocao(Termo),
					teste(Lista).

remocao(Termo) :- retract(Termo).
remocao(Termo) :- assert(Termo), !, fail.


% --------------------------------------------------------------------
% Extens�o do predicado que permite a procura do conhecimento: Termo, Predicado, Lista -> {V,F,D}

solucoes(X,Y,Z) :- findall(X,Y,Z).

% --------------------------------------------------------------------
%	Predicados gerais/auxiliares
% --------------------------------------------------------------------
% Extens�o do predicado que permite a nega��o: N -> {V,F,D}

nao(N) :- N,!,false.
nao(_).

% --------------------------------------------------------------------
% Extens�o do predicado demo: Questao,Resposta -> {V,F,D}

demo(Questao,verdadeiro) :- Questao.
demo(Questao,falso) :- -Questao.
demo(Questao,desconhecido) :- nao(Questao),
							  nao(-Quest�o).


% --------------------------------------------------------------------
% Extens�o do predicado que permite concluir se um elemento pertence a uma lista: Elemento, Lista -> {V,F,D}

pertence(H,[H|_]).
pertence(E,[H|T]) :- E \= H,
		     pertence(E,T).


% --------------------------------------------------------------------
% Extens�o do predicado que permite colocar uma lista com elementos �nicos: Lista_Original, Lista_Reultado -> {V,F,D}

semRepetidos([],[]).
semRepetidos([H|T], S) :- pertence(H,T),
						  semRepetidos(T,S).
semRepetidos([H|T], [H|S]) :- nao(pertence(H,T)), 
							  semRepetidos(T,S).


% --------------------------------------------------------------------
% Extens�o do predicado que permite determinar a maior entre duas datas

maiorData(D1-M1-A1,D2-M2-A2,D2-M2-A2) :- A2 > A1; 
										 (A2 == A1, M2 > M1); 
										 (A2 == A1, M2 == M1, D2 >= D1).
maiorData(D1-M1-A1,D2-M2-A2,D1-M1-A1) :- A2 < A1;
										 (A2 == A1, M2 < M1);
										 (A2 == A1, M2 == M1, D2 < D1).


% --------------------------------------------------------------------
% Extens�o do predicado que permite determinar a idade de um utente: Data_Nasc, Idade -> {V,F,D}

idade(_-_-A,S) :- (S is 2021-A).


% --------------------------------------------------------------------
% Extens�o do predicado que permite verificar se uma data est� entre outras: Data_Inicio, Data_Fim, Data_Avaliada -> {V,F,D}

dataIntermedia(DI,DF,DA) :-	maiorData(DI,DA,DA),
							maiorData(DF,DA,DF).


% --------------------------------------------------------------------
% Extens�o do predicado que permite verificar o comprimento de uma lista: Lista, Comprimento -> {V,F,D}

comprimento([],0).
comprimento([_|T],N) :- comprimento(T,R),
						N is R+1.


% --------------------------------------------------------------------
%	Predicados sobre funcionalidades do programa e auxiliares �s mesmas
% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar as pessoas vacinadas

vacinados(S) :-	solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_),vacina��o_Covid(_,UtenteID,_,_,_)),S1),
				semRepetidos(S1,S).


% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar as pessoas n�o vacinadas

naoVacinados(S) :- solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_),nao(vacina��o_Covid(_,UtenteID,_,_,_))),S).


% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar as pessoas vacinadas indevidamente

vacinadosIndevidamente(S) :- solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_), vacina��o_Covid(_,UtenteID,Data,_,1), vacinadoIndevidamente(UtenteID,Data)), S).


% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar as pessoas n�o vacinadas e candidatas ao mesmo

candidatosVacina��o(DataAtual, S) :- solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_), nao(vacina��o_Covid(_,UtenteID,_,_,_)), nao(vacinadoIndevidamente(UtenteID,DataAtual))),S).

% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar as pessoas vacinadas com a lacuna da segunda dose

faltaSegundaDose(S) :- solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_), vacina��o_Covid(_,UtenteID,_,_,1), nao(vacina��o_Covid(_,UtenteID,_,_,2))), S).


% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar a profiss�o de um utente.

profiss�oUtente(UtenteID, X) :- solucoes(Profiss�o,utente(UtenteID,_,_,_,_,_,_,Profiss�o,_,_),[X]).


% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar se um utente tem mais de 80 anos de idade.

utenteSenior(UtenteID) :- solucoes(Data_Nasc,utente(UtenteID,_,_,Data_Nasc,_,_,_,_,_,_),[S1]),
						  idade(S1,S),
						  S >= 80.


% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar se um utente tem mais de 80 anos de idade.

utenteDoenteCronico(UtenteID) :- solucoes(Doen�as_Cr�nicas,utente(UtenteID,_,_,_,_,_,_,_,Doen�as_Cr�nicas,_),[S1]),
								 nao(S1 == []).


% --------------------------------------------------------------------
% Extens�o do predicado que permite identificar se utente est� indevidamente vacinado.

vacinadoIndevidamente(UtenteID, Data) :- nao((dataIntermedia(01-02-2021,28-02-2021,Data), (profiss�oUtente(UtenteID,'M�dico'); profiss�oUtente(UtenteID,'Enfermeiro')));
									     (dataIntermedia(01-03-2021,31-03-2021,Data), (utenteSenior(UtenteID); utenteDonteCronico(UtenteID)), nao(profiss�oUtente(UtenteID,'M�dico'); profiss�oUtente(UtenteID,'Enfermeiro')));
									     (dataIntermedia(01-04-2021,30-04-2021,Data), nao(profiss�oUtente(UtenteID,'M�dico'); profiss�oUtente(UtenteID,'Enfermeiro'); utenteSenior(UtenteID); utenteDonteCronico(UtenteID)))).


% --------------------------------------------------------------------
% Predicados que permitem identificar os utentes por crit�rios de sele��o
% --------------------------------------------------------------------

utenteByID(Id,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).

utenteBySS(Ss,R) :- solucoes((Id, Ss, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, Ss, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).

utenteByNome(Nome,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).

utenteByDataNascimento(Data_Nasc,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).

utenteByEmail(Email,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).

utenteByTelefone(Telefone,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).

utenteByMorada(Morada,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).

utenteByProfiss�o(Profiss�o,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).

utenteByDoen�as(Doen�as_Cr�nicas,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, Doen�as_Cr�nicas, CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, Doen�as_Cr�nicas, CentroSa�de),R).

utenteByCentroSaude(CentroSa�de,R) :- solucoes((Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de), utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de),R).


% --------------------------------------------------------------------
% Predicados que permitem identificar o centro_sa�de por crit�rios de sele��o
% --------------------------------------------------------------------

centroSaudeByID(Id,R) :- solucoes((Id, Nome, Morada, Telefone, Email), centro_sa�de(Id, Nome, Morada, Telefone, Email), R).

centroSaudeByNome(Nome,R) :- solucoes((Id, Nome, Morada, Telefone, Email), centro_sa�de(Id, Nome, Morada, Telefone, Email), R).

centroSaudeByMorada(Morada,R) :- solucoes((Id, Nome, Morada, Telefone, Email), centro_sa�de(Id, Nome, Morada, Telefone, Email), R).

centroSaudeByTelefone(Telefone,R) :- solucoes((Id, Nome, Morada, Telefone, Email), centro_sa�de(Id, Nome, Morada, Telefone, Email), R).

centroSaudeByEmail(Email,R) :- solucoes((Id, Nome, Morada, Telefone, Email), centro_sa�de(Id, Nome, Morada, Telefone, Email), R).


% --------------------------------------------------------------------
% Predicados que permitem identificar o staff por crit�rios de sele��o
% --------------------------------------------------------------------

staffByID(Idstaff,R) :- solucoes((Idstaff, Idcentro, Nome, Email), staff(Idstaff, Idcentro, Nome, Email),R).

staffByIDCC(Idcentro,R) :- solucoes((Idstaff, Idcentro, Nome, Email), staff(Idstaff, Idcentro, Nome, Email),R).

staffByNome(Nome,R) :- solucoes((Idstaff, Idcentro, Nome, Email), staff(Idstaff, Idcentro, Nome, Email),R).

staffByEmail(Email,R) :- solucoes((Idstaff, Idcentro, Nome, Email), staff(Idstaff, Idcentro, Nome, Email),R).


% --------------------------------------------------------------------
% Conhecimento Negativo
% --------------------------------------------------------------------

-utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de) :- nao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)),
																														 nao(excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de))).

-centro_sa�de(Id, Nome, Morada, Telefone, Email) :- nao(centro_sa�de(Id, Nome, Morada, Telefone, Email)),
													nao(excecao(centro_sa�de(Id, Nome, Morada, Telefone, Email))).

-staff(Idstaff, Idcentro, Nome, Email) :- nao(staff(Idstaff, Idcentro, Nome, Email)),
										  nao(excecao(staff(Idstaff, Idcentro, Nome, Email))).


% Um utente registado tem uma profiss�o desconhecida mas sabemos que n�o � m�dico

utente(11, '34611561954', 'Joaquim Vieira', 15-01-1970, 'joaquimvieira@gmail.com', '988265548', 'Rua de S.Martinho', profiss�oDesconhecida, [], '2').
-utente(11, '34611561954', 'Joaquim Vieira', 15-01-1970, 'joaquimvieira@gmail.com', '988265548', 'Rua de S.Martinho', 'M�dico', [], '2').


% Um centro de sa�de registado tem um telefone desconhecido mas sabemos que n�o � 259440886

centro_sa�de(4, 'Centro de Sa�de de P�voa de Lanhoso', 'Rua do Centro de Sa�de, Lanhoso, P�voa de Lanhoso', telefoneDesconhecido, 'centrodesaudePVL@gmail.com').
-centro_sa�de(4, 'Centro de Sa�de de P�voa de Lanhoso', 'Rua do Centro de Sa�de, Lanhoso, P�voa de Lanhoso', '259440886', 'centrodesaudePVL@gmail.com').


% Um staff registado tem o Id do centro onde trabalho desconhecido mas sabemos que n�o � no 3

staff(11, idDesconhecido, 'Maria de Jesus Rodrigues', 'jesus@gmail.com').
-staff(11, 3, 'Maria de Jesus Rodrigues', 'jesus@gmail.com').


% --------------------------------------------------------------------
% Conhecimento Incerto (Utente)
% --------------------------------------------------------------------

% N�mero de seguran�a social desconhecido

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, n�Seguran�a_SocialDesconhecido, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de).


% Nome desconhecido

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, N�Seguran�a_Social, nomeDesconhecido, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de).


% Data de nascimento desconhecida

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, N�Seguran�a_Social, Nome, dataNascimentoDesconhecida, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de).


% Email desconhecido

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, emailDesconhecido, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de).


% Telefone desconhecido

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, telefoneDesconhecido, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de).


% Morada desconhecida

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, moradaDesconhecida, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de).


% Profiss�o desconhecida

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, profiss�oDesconhecida, [Doen�as_Cr�nicas], CentroSa�de).


% Doen�as cr�nicas desconhecidas

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, doen�asCr�nicasDesconhecidas, CentroSa�de).


% Centro de Sa�de desconhecido

excecao(utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], CentroSa�de)) :- utente(Id, N�Seguran�a_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profiss�o, [Doen�as_Cr�nicas], centroSa�deDesconhecido).


% --------------------------------------------------------------------
% Conhecimento Incerto (Centro de Sa�de)
% --------------------------------------------------------------------

% Nome desconhecido

excecao(centro_sa�de(Id, Nome, Morada, Telefone, Email)) :- centro_sa�de(Id, nomeDesconhecido, Morada, Telefone, Email).


% Morada desconhecida

excecao(centro_sa�de(Id, Nome, Morada, Telefone, Email)) :- centro_sa�de(Id, Nome, moradaDesconhecida, Telefone, Email).


% Telefone desconhecido

excecao(centro_sa�de(Id, Nome, Morada, Telefone, Email)) :- centro_sa�de(Id, Nome, Morada, telefoneDesconhecido, Email).


% Email desconhecido

excecao(centro_sa�de(Id, Nome, Morada, Telefone, Email)) :- centro_sa�de(Id, Nome, Morada, Telefone, emailDesconhecido).


% Telefone e Email desconhecidos

excecao(centro_sa�de(Id, Nome, Morada, Telefone, Email)) :- centro_sa�de(Id, Nome, Morada, telefoneDesconhecido, emailDesconhecido).


% --------------------------------------------------------------------
% Conhecimento Incerto (Staff)
% --------------------------------------------------------------------

% Id do Centro de Sa�de desconhecido

excecao(staff(Idstaff, Idcentro, Nome, Email)) :- staff(Idstaff, idDesconhecido, Nome, Email).


% Nome desconhecido

excecao(staff(Idstaff, Idcentro, Nome, Email)) :- staff(Idstaff, Idcentro, nomeDesconhecido, Email).


% Email desconhecido

excecao(staff(Idstaff, Idcentro, Nome, Email)) :- staff(Idstaff, Idcentro, Nome, emailDesconhecido).


% --------------------------------------------------------------------
% Conhecimento Impreciso
% --------------------------------------------------------------------

% Um utente que pode estar do centro de sa�de 1 ou 2

excecao(utente(12, '34611111368', 'Mabi Ferreira', 18-06-2000, 'mabiferr@gmail.com', '933369658', 'Rua Ant�nio Gomes', 'T�xista', [], '1')).
excecao(utente(12, '34611111368', 'Mabi Ferreira', 18-06-2000, 'mabiferr@gmail.com', '933369658', 'Rua Ant�nio Gomes', 'T�xista', [], '2')).


% Um membro do staff que pode ter como nome Maria Josefna Silva ou Josefina Silva

excecao(staff(12, 2, 'Maria Josefina Silva', 'josefaSilva@gmail.com')).
excecao(staff(12, 2, 'Josefina Silva', 'josefaSilva@gmail.com')).


% Um membro do staff que trabalha nos 3 centros de sa�de

excecao(staff(13, Idcentro, 'Roberto Santiago', 'robertiago@gmail.com')) :- Idcentro >= 1,
																			Idcentro =< 3.>


% Um centro de sa�de com mais que um n�mero de telefone

excecao(centro_sa�de(4, 'Centro de Sa�de de Barcelos', 'Rua do Galo, Barcelos', '256248596', 'centroBarcelos@gmail.com')).
excecao(centro_sa�de(4, 'Centro de Sa�de de Barcelos', 'Rua do Galo, Barcelos', '256248597', 'centroBarcelos@gmail.com')).
