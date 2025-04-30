function avancar_Perfil_L_Comparessao()
global Compressao_L_Opt;
global Compressao_L_Cont;

if Compressao_L_Opt~=0
    Compressao_L_Cont=1; 
    set(findobj(gcf,'Tag','text23'),'String','Aguarde um momento.');
    set(findobj(gcf,'Tag','text23'),'ForegroundColor','Blue');
else
    set(findobj(gcf,'Tag','text23'),'String','Selecione opção');
    set(findobj(gcf,'Tag','text23'),'ForegroundColor','Red');      
end

end