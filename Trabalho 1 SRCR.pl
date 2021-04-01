% Trabalho 1 de Sistemas de Representação de Conhecimento e Raciocínio
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
% Base de conhecimento com informação sobre utente, centro de saúde, staff e vacinação Covid

:- op(900,xfy,'::').
:- dynamic utente/10.
:- dynamic centro_saúde/5.
:- dynamic staff/4.
:- dynamic vacinação_Covid/5.
:- dynamic fases/4.


% ---------------------------------------------------------------------
% Extensão do predicado utente: #Idutente, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], #CentroSaúde -> {V,F}

utente(1, '50577343592', 'Henrique Severo Espargosa', 19-09-1963, 'heriqueespargosa@gmail.com', '925660961', 'Avenida da Liberdade', 'Barbeiro', '[Artrite Reumatóide]', '1').
utente(2, '76660664525', 'Kévin Brandão Outeiro', 30-10-1995, 'kevinouteiro@gmail.com', '926067176', 'Rua da Liberdade', 'Bartender', '[Parkinson]', '2').
utente(3, '19053925216', 'Anabel Pederneiras Batata', 28-04-1919, 'anabelbatata@gmail.com', '923462300', 'Rua 25 de Abril', 'Reformado', '[Insuficiência cardíaca, Diabetes]', '1').
utente(4, '56156406212', 'Isabelly Prada Couto', 11-07-1981, 'isabellycouto@gmail.com', '925865324', 'Avenida 25 de Abril', 'Desempregado', '[SIDA]', '3').
utente(5, '85012667165', 'Alessia Trindade Farias', 06-10-1923, 'alessiafarias@gmail.com', '922100314', 'Rua do Carmo', 'Reformado', '[Escoliose]', '1').
utente(6, '21435653330', 'Dafne Barreno Delgado', 05-01-1980, 'dafnedelgado@gmail.com', '923154251', 'Avenida do Carmo', 'Médico', '[Obesidade]', '2').
utente(7, '55257724030', 'Amélia Barrico Cerqueira', 25-03-1968, 'ameliacerqueira@gmail.com', '929156442', 'Rua do Pontido', 'Advogado', '[]', '2').
utente(8, '32321985798', 'Jaden Carregueiro Bernardes', 27-12-1936, 'jadenbernardes@gmail.com', '927466477', 'Rua Nossa Senhora de Fátima', 'Enfermeiro', '[Pós-Transplante de Órgão]', '3').
utente(9, '74899994834', 'Élia Paranhos Sobreira', 22-05-1953, 'eliasobreira@gmail.com', '920712898', 'Rua dos Peões', 'Professor', '[Doença Celíaca]', '1').
utente(10, '61341191054', 'Aura Dourado Filipe', 15-01-1998, 'aurafilipe@gmail.com', '921342600', 'Rua Nova de Santa Cruz', 'Estudante', '[]', '3').


% ---------------------------------------------------------------------
% Extensão do predicado centro_saúde: #Idcentro, Nome, Morada, Telefone, Email -> {V,F}

centro_saúde(1, 'Centro de Saúde do Alto Minho', 'Lugar de Barreiras, Mazedo, Monção', '255533079', 'centrodesaudeMoncao@gmail.com').
centro_saúde(2, 'Centro de Saúde do Baixo Ribatejo', 'Rua da Cevadeira, Castanheira do Ribatejo, Vila Franca de Xira', '252745329', 'centrodesaudeXira@gmail.com').
centro_saúde(3, 'Centro de Saúde de Lisboa', 'Rua de S. Ciro, Lapa, Lisboa', '259440886', 'centrodesaudeLapa@gmail.com').


% ---------------------------------------------------------------------
% Extensão do predicado staff: #Idstaff, #Idcentro, Nome, Email -> {V,F}

staff(1, 1, 'Jacinto Imperial Enes', 'jacintoenes@gmail.com').
staff(2, 2, 'Leonor Cunha Bouça', 'leonorbouca@gmail.com').
staff(3, 3, 'Iara Amarante Peçanha', 'iarapecanha@gmail.com').
staff(4, 1, 'Raj Malta Varanda', 'rajvaranda@gmail.com').
staff(5, 2, 'Aleksandr Loio Simas', 'aleksandrsimas@gmail.com').
staff(6, 3, 'Runa Sequeira Porto', 'ruanporto@gmail.com').
staff(7, 1, 'Igor Figueiró Lucas', 'igorlucas@gmail.com').
staff(8, 2, 'Vladislav Bernerdes Quirino', 'vladislavquirino@gmail.com').
staff(9, 3, 'Emanuel Regodeiro Rodovalho', 'regodeirorodovalho@gmail.com').
staff(10 ,1, 'Genésia Rego Barcelos', 'genesiabarcelos@gmail.com').


% ---------------------------------------------------------------------
% Extensão do predicado vacinação_Covid: #Staff, #utente, Data, Vacina, Toma -> {V,F}

vacinação_Covid(1, 3, 29-03-2021, 'Pfizer', 1).
vacinação_Covid(5, 8, 09-02-2021, 'Pfizer', 1).
vacinação_Covid(4, 5, 02-04-2021, 'Pfizer', 1).
vacinação_Covid(9, 8, 09-02-2021, 'Pfizer', 2).
vacinação_Covid(2, 1, 28-03-2021, 'Pfizer', 1).


% ---------------------------------------------------------------------
% Extensão do predicado fases: Fases, Data_Inicial, Data_Final, Características -> {V,F}

fases(1, 01-02-2021, 28-02-2021, 'Ser médico ou Enfermeiro').
fases(2, 01-03-2021, 31-03-2021, 'Ter mais de 80 ou ter doenças crónicas').
fases(3, 01-04-2021, 31-04-2021, 'Toda a população').

% ---------------------------------------------------------------------
% Invariante Estrutural ( Não permitir a inserção de conhecimento repetido)

+utente(Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde) :: (solucoes((Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde), (utente(Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde)), S), 
                                                                                                                          comprimento(S, N),
                                                                                                                          N == 1).

+centro_saúde(Idcentro, Nome, Morada, Telefone, Email) :: (solucoes((Idcentro, Nome, Morada, Telefone, Email), (centro_saúde(Idcentro, Nome, Morada, Telefone, Email)), S), 
														   comprimento(S, N), 
														   N == 1).

+staff(Idstaff, Idcentro, Nome, Email) :: (solucoes((Idstaff, Idcentro, Nome, Email), (staff(Idstaff, Idcentro, Nome, Email)), S), 
										   comprimento(S, N), 
										   N == 1).

+vacinação_Covid(Staff, Utente, Data, Vacina, Toma) :: (solucoes((Staff, Utente, Data, Vacina, Toma), (vacinação_Covid(Staff, Utente, Data, Vacina, Toma)), S),
													    comprimento(S, N), 
													    N == 1). 


% ---------------------------------------------------------------------
% Invariante Referencial -> Não admitir mais que um utente com o mesmo ID

+utente(Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde) :: (solucoes(Id, (utente(Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde)), S), 
																														  comprimento(S, N), 
																														  N == 1).


% ---------------------------------------------------------------------
% Invariante Referencial -> Não admitir mais que um centro_saúde com o mesmo ID

+centro_saúde(Idcentro, Nome, Morada, Telefone, Email) :: (solucoes(Idcentro, (centro_saúde(Idcentro, Nome, Morada, Telefone, Email)), S), 
														   comprimento(S, N), 
														   N == 1).


% ---------------------------------------------------------------------
% Invariante Referencial -> Não admitir mais que um staff com o mesmo ID

+staff(Idstaff, Idcentro, Nome, Email) :: (solucoes(Idstaff, (staff(Idstaff, Idcentro, Nome, Email)), S), 
										   comprimento(S, N),
										   N == 1).


% ---------------------------------------------------------------------
% Invariante Referencial -> Não admitir vacinação_Covid marcadas a utentes ou staff que não existem

+vacinação_Covid(Staff, Utente,_,_,_) :: (utente(Utente,_,_,_,_,_,_,_,_,_), staff(Staff,_,_,_)).


% ---------------------------------------------------------------------
% Invariante Referencial -> Não admitir a remoção de utentes ou staff que já existam vacinação_Covid com os mesmos

-utente(Id,_,_,_,_,_,_,_,_,_) :: (solucoes(Id, vacinação_Covid(_,Id,_,_,_), S), 
								  comprimento(S, N),
								  N == 0).

-staff(Idstaff,_,_,_) :: (solucoes(Idstaff, vacinação_Covid(Idstaff,_,_,_,_), S),
						   comprimento(S, N),
						   N == 0).


% --------------------------------------------------------------------
% Extensão do predicado que permite o registo de um utente: Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde -> {V,F}

registoUtente(Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde) :- evolucao(utente(Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde)).


% --------------------------------------------------------------------
% Extensão do predicado que permite o registo de um centro_saúde: Idcentro, Nome, Morada, Telefone, Email -> {V,F}

registoCentroSaude(Idcentro, Nome, Morada, Telefone, Email) :- evolucao(centro_saúde(Idcentro, Nome, Morada, Telefone, Email)).


% --------------------------------------------------------------------
% Extensão do predicado que permite o registo de um staff: Idstaff, Idcentro, Nome, Email -> {V,F}

registoStaff(Idstaff, Idcentro, Nome, Email) :- evolucao(staff(Idstaff, Idcentro, Nome, Email)).


% --------------------------------------------------------------------
% Extensão do predicado que permite o registo de uma vacinação_Covid: Staff, Utente, Data, Vacina, Toma -> {V,F}

registoVacinacaoCovid(Staff, Utente, Data, Vacina, Toma) :- evolucao(vacinação_Covid(Staff, Utente, Data, Vacina, Toma)).


% --------------------------------------------------------------------
% Extensão do predicado que permite a remoção de um utente: Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde -> {V,F}

remocaoUtente(Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde) :- involucao(utente(Id, NºSegurança_Social, Nome, Data_Nasc, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], CentroSaúde)).


% --------------------------------------------------------------------
% Extensão do predicado que permite a remoção de um centro_saúde: Idcentro, Nome, Morada, Telefone, Email -> {V,F}

remocaoCentroSaude(Idcentro, Nome, Morada, Telefone, Email) :- involucao(centro_saúde(Idcentro, Nome, Morada, Telefone, Email)).


% --------------------------------------------------------------------
% Extensão do predicado que permite a remoção de um staff: Idstaff, Idcentro, Nome, Email -> {V,F}

remocaoStaff(Idstaff, Idcentro, Nome, Email) :- involucao(staff(Idstaff, Idcentro, Nome, Email)).


% --------------------------------------------------------------------
% Extensão do predicado que permite a remoção de uma vacinação_Covid: Staff, Utente, Data, Vacina, Toma -> {V,F}

remocaoVacinacaoCovid(Staff, Utente, Data, Vacina, Toma) :- involucao(vacinação_Covid(Staff, Utente, Data, Vacina, Toma)).


% --------------------------------------------------------------------
% Extensão do predicado que permite a procura do conhecimento: Termo, Predicado, Lista -> {V,F}

solucoes(X,Y,Z) :- findall(X,Y,Z).


% --------------------------------------------------------------------
% Extensão do predicado que permite a negação: N -> {V,F}

nao(N) :- N,!,false.
nao(_).


% --------------------------------------------------------------------
% Extensão do predicado que permite concluir se um elemento pertence a uma lista: Elemento, Lista -> {V,F}

pertence(H,[H|_]).
pertence(E,[H|T]) :- E \= H,
					 pertence(E,T).


% --------------------------------------------------------------------
% Extensão do predicado que permite a evolução do conhecimento: T -> {V,F}

evolucao(Termo) :- solucoes(Invariante, +Termo::Invariante, Lista),
				   insercao(Termo),
				   teste(Lista).

insercao(Termo) :- assert(Termo).
insercao(Termo) :- retract(Termo), !, fail.

teste([]).
teste([R|LR]) :- R,
				 teste(LR).


% --------------------------------------------------------------------
% Extensão do predicado que permite a involução do conhecimento: T -> {V,F}

involucao(Termo) :- Termo,
					solucoes(Invariante, -Termo::Invariante, Lista),
					remocao(Termo),
					teste(Lista).

remocao(Termo) :- retract(Termo).
remocao(Termo) :- assert(Termo), !, fail.

% --------------------------------------------------------------------
% Extensão do predicado que permite colocar uma lista com elementos únicos: Lista_Original, Lista_Reultado -> {V,F}

semRepetidos([],[]).
semRepetidos([H|T], S) :- pertence(H,T),
						  semRepetidos(T,S).
semRepetidos([H|T], [H|S]) :- nao(pertence(H,T)), 
							  semRepetidos(T,S).


% --------------------------------------------------------------------
% Extensão do predicado que permite determinar a maior entre duas datas

maiorData(D1-M1-A1,D2-M2-A2,D2-M2-A2) :- A2 > A1; 
										 (A2 == A1, M2 > M1); 
										 (A2 == A1, M2 == M1, D2 >= D1).
maiorData(D1-M1-A1,D2-M2-A2,D1-M1-A1) :- A2 < A1;
										 (A2 == A1, M2 < M1);
										 (A2 == A1, M2 == M1, D2 < D1).


% --------------------------------------------------------------------
% Extensão do predicado que permite determinar a idade de um utente: Data_Nasc, Idade -> {V,F}

idade(_-_-A,S) :- (S is 2021-A).


% --------------------------------------------------------------------
% Extensão do predicado que permite verificar se uma data está entre outras: Data_Inicio, Data_Fim, Data_Avaliada -> {V,F}

dataIntermedia(DI,DF,DA) :-	maiorData(DI,DA,DA),
							maiorData(DF,DA,DF).


% --------------------------------------------------------------------
% Extensão do predicado que permite verificar o comprimento de uma lista: Lista, Comprimento -> {V,F}

comprimento([],0).
comprimento([_|T],N) :- comprimento(T,R),
						N is R+1.


% --------------------------------------------------------------------
% Extensão do predicado que permite determinar a diferença de datas em dias: Data_Inicio, Data_Fim, Dias -> {V,F}

%diasIntermedios(D1-M1-A1,D,D2-M2-A2) :- (D1 > )


% --------------------------------------------------------------------
% Extensão do predicado que permite identificar as pessoas vacinadas

vacinados(S) :-	solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_),vacinação_Covid(_,UtenteID,_,_,_)),S1),
				semRepetidos(S1,S).


% --------------------------------------------------------------------
% Extensão do predicado que permite identificar as pessoas não vacinadas

naoVacinados(S) :- solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_),nao(vacinação_Covid(_,UtenteID,_,_,_))),S).


% --------------------------------------------------------------------
% Extensão do predicado que permite identificar as pessoas vacinadas indevidamente

vacinadosIndevidamente(S) :- solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_), vacinação_Covid(_,UtenteID,Data,_,1), vacinadoIndevidamente(UtenteID,Data)), S).


% --------------------------------------------------------------------
% Extensão do predicado que permite identificar as pessoas não vacinadas e candidatas ao mesmo

candidatosVacinação(DataAtual, S) :- solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_), nao(vacinação_Covid(_,UtenteID,_,_,_)), nao(vacinadoIndevidamente(UtenteID,DataAtual))),S).

% --------------------------------------------------------------------
% Extensão do predicado que permite identificar as pessoas vacinadas com a lacuna da segunda dose

faltaSegundaDose(S) :- solucoes((UtenteID,Nome),(utente(UtenteID,_,Nome,_,_,_,_,_,_,_), vacinação_Covid(_,UtenteID,_,_,1), nao(vacinação_Covid(_,UtenteID,_,_,2))), S).


% --------------------------------------------------------------------
% Extensão do predicado que permite perceber se a segunda dose foi administrada atempadamente

% segundaDoseAtrasada(UtenteID, S) :-	solucoes(Data,(vacinação_Covid(_,UtenteID,_,_,1)),D1),
% 									    solucoes(Data,(vacinação_Covid(_,UtenteID,_,_,2)),D2).
% 									    dataIntermedia


% --------------------------------------------------------------------
% Extensão do predicado que permite identificar a profissão de um utente.

profissãoUtente(UtenteID, X) :- solucoes(Profissão,utente(UtenteID,_,_,_,_,_,_,Profissão,_,_),[X]).


% --------------------------------------------------------------------
% Extensão do predicado que permite identificar se um utente tem mais de 80 anos de idade.

utenteSenior(UtenteID) :- solucoes(Data_Nasc,utente(UtenteID,_,_,Data_Nasc,_,_,_,_,_,_),[S1]),
						  idade(S1,S),
						  S >= 80.


% --------------------------------------------------------------------
% Extensão do predicado que permite identificar se um utente tem mais de 80 anos de idade.

utenteDonteCronico(UtenteID) :- solucoes(Doenças_Crónicas,utente(UtenteID,_,_,_,_,_,_,_,Doenças_Crónicas,_),[S1]),
								nao(S1 == '[]').


% --------------------------------------------------------------------
% Extensão do predicado que permite identificar se utente está indevidamente vacinado.

vacinadoIndevidamente(UtenteID, Data) :- nao((dataIntermedia(01-02-2021,28-02-2021,Data), (profissãoUtente(UtenteID,'Médico'); profissãoUtente(UtenteID,'Enfermeiro')));
									     (dataIntermedia(01-03-2021,31-03-2021,Data), (utenteSenior(UtenteID); utenteDonteCronico(UtenteID)), nao(profissãoUtente(UtenteID,'Médico'); profissãoUtente(UtenteID,'Enfermeiro')));
									     (dataIntermedia(01-04-2021,30-04-2021,Data), nao(profissãoUtente(UtenteID,'Médico'); profissãoUtente(UtenteID,'Enfermeiro'); utenteSenior(UtenteID); utenteDonteCronico(UtenteID)))).
