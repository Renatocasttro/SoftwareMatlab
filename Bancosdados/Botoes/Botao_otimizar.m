function[] = Botao_otimizar ()
global avan_otm;
global Aux4;
global errov;
global otm; 

otm=1 % informa ao sistema que o processo de otmiza��o est� em andamento.
Entrada_de_dados()

if Aux4==0
avan_otm = 0;
Limpar_dados();
movegui(Otimizacao, 'center');
waitfor (Otimizacao);

%significa que a rotina_otimizacao s� � acionada quando o botao avan�ar
%da interface de otimiza�ao � pressionado. Quando o usu�rio escolhe fechar
%a interface de otimiza�ao, a rotina_otimizacao nao � compilada
if avan_otm ==1;
rotina_otimizacao ();
end

else
    errov = 1;
    errof ();
end
