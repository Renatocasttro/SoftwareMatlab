function[] = Botao_otimizar ()
global avan_otm

avan_otm = 0;
movegui(Otimizacao, 'center');
waitfor (Otimizacao);

%significa que a rotina_otimizacao só é acionada quando o botao avançar
%da interface de otimizaçao é pressionado. Quando o usuário escolhe fechar
%a interface de otimizaçao, a rotina_otimizacao nao é compilada
if avan_otm ==1;
rotina_otimizacao ();
end
