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

utente(1, '50577343592', 'Henrique Severo Espargosa', '19-09-1963', 'heriqueespargosa@gmail.com', '925660961', 'Barbeiro', '[Artrite Reumatóide]', '1').
utente(2, '76660664525', 'Kévin Brandão Outeiro', '30-10-1995', 'kevinouteiro@gmail.com', '926067176', 'Bartender', '[Parkinson]', '2').
utente(3, '19053925216', 'Anabel Pederneiras Batata', '28-04-1919', 'anabelbatata@gmail.com', '923462300', 'Reformado', '[Insuficiência cardíaca, Diabetes]', '1').
utente(4, '56156406212', 'Isabelly Prada Couto', '11-07-1981', 'isabellycouto@gmail.com', '925865324', 'Desempregado', '[SIDA]', '3').
utente(5, '85012667165', 'Alessia Trindade Farias', '06-10-1923', 'alessiafarias@gmail.com', '922100314', 'Reformado', '[Escoliose]', '1').
utente(6, '21435653330', 'Dafne Barreno Delgado', '05-01-1980', 'dafnedelgado@gmail.com', '923154251', 'Taxista', '[Obesidade]', '2').
utente(7, '55257724030', 'Amélia Barrico Cerqueira', '25-03-1968', 'ameliacerqueira@gmail.com', '929156442', 'Advogado', '[]', '2').
utente(8, '32321985798', 'Jaden Carregueiro Bernardes', '27-12-1936', 'jadenbernardes@gmail.com', '927466477', 'Cantor', '[Pós-Transplante de Órgão]', '3').
utente(9, '74899994834', 'Élia Paranhos Sobreira', '22-05-1953', 'eliasobreira@gmail.com', '920712898', 'Professor', '[Doença Celíaca]', '1').
utente(10, '61341191054', 'Aura Dourado Filipe', '15-01-1998', 'aurafilipe@gmail.com', '921342600', 'Estudante', '[]', '3').

% ---------------------------------------------------------------------
%Extensão do predicado centro_saúde: #Idcentro, Nome, Morada, Telefone, Email -> {V,F}

centro_saúde(1, 'Centro de Saúde do Alto Minho', 'Lugar de Barreiras, Mazedo, Monção', '255533079', 'centrodesaudeMoncao@gmail.com').
centro_saúde(2, 'Centro de Saúde do Baixo Ribatejo', 'Rua da Cevadeira, Castanheira do Ribatejo, Vila Franca de Xira', '252745329', 'centrodesaudeXira@gmail.com').
centro_saúde(3, 'Centro de Saúde de Lisboa', 'Rua de S. Ciro, Lapa, Lisboa', '259440886', 'centrodesaudeLapa@gmail.com').

% ---------------------------------------------------------------------
% Extensão do predicado staff: #Idstaff, #Idcentro, Nome, email -> {V,F}

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

vacinação_Covid(1, 3, '29-01-2021', 'Pfizer', '2').
vacinação_Covid(5, 8, '09-01-2021', 'Pfizer', '2').
vacinação_Covid(4, 5, '02-01-2021', 'Pfizer', '2').
vacinação_Covid(9, 9, '09-02-2021', 'Pfizer', '1').
vacinação_Covid(2, 1, '28-02-2021', 'Pfizer', '1').