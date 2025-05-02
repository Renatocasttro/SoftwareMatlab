function[] = botao_enrijecedor()
global espac;
global ts1;
global bs1;
global ts2;
global bs2;
global kv;
global errov;
global avan_enr;

kv = 5;
errov = 0;
avan_enr = 0;

%limpando as variáveis necessarias para enrijecedor
espac = '(*)';
ts1 = '(*)';
bs1 = '(*)';
ts2 = '(*)';
bs2 = '(*)';

movegui(Enrijecedor, 'center');
waitfor (Enrijecedor);
if avan_enr ==1;
errof ();
Resultados_I();
end