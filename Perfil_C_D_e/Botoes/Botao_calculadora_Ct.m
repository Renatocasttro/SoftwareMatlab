function[] = Botao_calculadora_Ct ()
global avan_ct;

avan_ct = 0;
movegui(Ct, 'center');
waitfor (Ct);

%significa que a rotina_ct só é acionada quando o botao avançar
%da interface de ct é pressionado. Quando o usuário escolhe fechar
%a interface de ct, a rotina_ct nao é compilada
if avan_ct ==1;
rotina_Ct ;
end 

