function[] = Selecionar_Banco_Com()
global pe;
%pe - Formatarinterface.m;1 perfil I; 2 L; 3 T; 4 C; tipo de perfil selecionado;

switch pe;
case 1;
    banco_Icom();
case 2;
    banco_Lcom();
case 3;
    banco_Tcom();
case 4;
    banco_Ccom();       
end
    
end