%adicionando sub-pastas do diretorio principal para que o programa consiga
%ler seu conteudo
addpath(genpath('Bancosdados'));
addpath(genpath('Botoes'));
addpath(genpath('CompressaoIH'));
addpath(genpath('Imagens'));
addpath(genpath('Botoesajuda'));
addpath(genpath('Calculo_Ct'));
addpath(genpath('Tração'));
addpath(genpath('Rotinas de Otimizaçao'));
addpath(genpath('Rotinas enrijecedor'));
addpath(genpath('Perfil_I'));
addpath(genpath('Perfil_L'));
addpath(genpath('Perfil_T'));
addpath(genpath('Perfil_C'));

%banco de dados de aços
global tiposdeaco;
load('tiposdeaco.mat');

%banco de dados de I laminados: nomes(1) e valores(2)
global IHLdsim1;
load('IHLdsim1.mat');
global IHLdsim2;
load('IHLdsim2.mat');

%banco de dados de I soldados: nomes(1) e valores(2)
global IHSdsim1;
load('IHSdsim1.mat');
global IHSdsim2;
load('IHSdsim2.mat');

%banco de dados de I soldados: nomes(1) e valores(2)
global IHSmsim1;
load('IHSmsim1.mat');
global IHSmsim2;
load('IHSmsim2.mat');

%banco de dados de T laminados: nomes(1) e valores(2)
global T_lam1;
load('T_lam1.mat');
global T_lam2;
load('T_lam2.mat');

%banco de dados de C laminados: nomes(1) e valores(2)
global C_lam1_novo;
load('C_lam1_novo.mat');
global C_lam2_novo;
load('C_lam2_novo.mat');

%banco de dados de L laminados: nomes(1) e valores(2)
global L_lam1;
load('L_lam1.mat');
global L_lam2;
load('L_lam2.mat');

%abre DIMPER no centro da tela
movegui(DIMPER, 'center');