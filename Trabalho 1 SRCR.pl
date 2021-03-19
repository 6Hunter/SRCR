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

utente(1, '50577343592', 'Henrique Severo Espargosa', '19-09-1963', 'heriqueespargosa@gmail.com', '925660961', 'Barbeiro', '[Artrite Reumat�ide]', '1').
utente(2, '76660664525', 'K�vin Brand�o Outeiro', '30-10-1995', 'kevinouteiro@gmail.com', '926067176', 'Bartender', '[Parkinson]', '2').
utente(3, '19053925216', 'Anabel Pederneiras Batata', '28-04-1919', 'anabelbatata@gmail.com', '923462300', 'Reformado', '[Insufici�ncia card�aca, Diabetes]', '1').
utente(4, '56156406212', 'Isabelly Prada Couto', '11-07-1981', 'isabellycouto@gmail.com', '925865324', 'Desempregado', '[SIDA]', '3').
utente(5, '85012667165', 'Alessia Trindade Farias', '06-10-1923', 'alessiafarias@gmail.com', '922100314', 'Reformado', '[Escoliose]', '1').
utente(6, '21435653330', 'Dafne Barreno Delgado', '05-01-1980', 'dafnedelgado@gmail.com', '923154251', 'Taxista', '[Obesidade]', '2').
utente(7, '55257724030', 'Am�lia Barrico Cerqueira', '25-03-1968', 'ameliacerqueira@gmail.com', '929156442', 'Advogado', '[]', '2').
utente(8, '32321985798', 'Jaden Carregueiro Bernardes', '27-12-1936', 'jadenbernardes@gmail.com', '927466477', 'Cantor', '[P�s-Transplante de �rg�o]', '3').
utente(9, '74899994834', '�lia Paranhos Sobreira', '22-05-1953', 'eliasobreira@gmail.com', '920712898', 'Professor', '[Doen�a Cel�aca]', '1').
utente(10, '61341191054', 'Aura Dourado Filipe', '15-01-1998', 'aurafilipe@gmail.com', '921342600', 'Estudante', '[]', '3').

% ---------------------------------------------------------------------
%Extens�o do predicado centro_sa�de: #Idcentro, Nome, Morada, Telefone, Email -> {V,F}

centro_sa�de(1, 'Centro de Sa�de do Alto Minho', 'Lugar de Barreiras, Mazedo, Mon��o', '255533079', 'centrodesaudeMoncao@gmail.com').
centro_sa�de(2, 'Centro de Sa�de do Baixo Ribatejo', 'Rua da Cevadeira, Castanheira do Ribatejo, Vila Franca de Xira', '252745329', 'centrodesaudeXira@gmail.com').
centro_sa�de(3, 'Centro de Sa�de de Lisboa', 'Rua de S. Ciro, Lapa, Lisboa', '259440886', 'centrodesaudeLapa@gmail.com').

% ---------------------------------------------------------------------
% Extens�o do predicado staff: #Idstaff, #Idcentro, Nome, email -> {V,F}

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
% Extens�o do predicado vacina��o_Covid: #Staff, #utente, Data, Vacina, Toma -> {V,F}

vacina��o_Covid(1, 3, '29-01-2021', 'Pfizer', '2').
vacina��o_Covid(5, 8, '09-01-2021', 'Pfizer', '2').
vacina��o_Covid(4, 5, '02-01-2021', 'Pfizer', '2').
vacina��o_Covid(9, 9, '09-02-2021', 'Pfizer', '1').
vacina��o_Covid(2, 1, '28-02-2021', 'Pfizer', '1').