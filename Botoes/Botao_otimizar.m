function[] = Botao_otimizar ()
global avan_otm

avan_otm = 0;
movegui(Otimizacao, 'center');
waitfor (Otimizacao);

%significa que a rotina_otimizacao s� � acionada quando o botao avan�ar
%da interface de otimiza�ao � pressionado. Quando o usu�rio escolhe fechar
%a interface de otimiza�ao, a rotina_otimizacao nao � compilada
if avan_otm ==1;
rotina_otimizacao ();
end
