function[] = Botao_calculadora_Ct ()
global avan_ct;

avan_ct = 0;
movegui(Ct, 'center');
waitfor (Ct);

%significa que a rotina_ct s� � acionada quando o botao avan�ar
%da interface de ct � pressionado. Quando o usu�rio escolhe fechar
%a interface de ct, a rotina_ct nao � compilada
if avan_ct ==1;
rotina_Ct ;
end 

