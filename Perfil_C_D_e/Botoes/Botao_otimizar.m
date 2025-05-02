function[] = Botao_otimizar ()
global avan_otm;
global Aux4;
global errov;
global otm; 

otm=1 % informa ao sistema que o processo de otmização está em andamento.
Entrada_de_dados()

if Aux4==0
avan_otm = 0;
Limpar_dados();
movegui(Otimizacao, 'center');
waitfor (Otimizacao);

%significa que a rotina_otimizacao só é acionada quando o botao avançar
%da interface de otimizaçao é pressionado. Quando o usuário escolhe fechar
%a interface de otimizaçao, a rotina_otimizacao nao é compilada
if avan_otm ==1;
rotina_otimizacao ();
end

else
    errov = 1;
    errof ();
end
