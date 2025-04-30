function[] = rotina_otimizacao ()
global m;
global otimo;
global errov;
global ct_otm;
global num_rows;
global matriz_tracao;
global Ntsd;
global i;
global aux2;
global otm;
global b;

% n�mero ordem do perfil na lista (popmenu2)
b = get(findobj(gcf,'Tag','popupmenu2'),'String'); 
num_rows = size(b,1); % tamanho da lista lista de perfis
aux1=10000;
aux2=0;
ct_otm = 0; % par�metro de controle de otiiza��o. Zero (0) est� na ....
....primeira otimiza��o. 1 segunda itera��o em diante.
otm=1; % est� em curso um processo de otmiza��o

if Ntsd>0
matriz_tracao = zeros(num_rows, 5);
end

i=1;
while i<=num_rows
    set(findobj(gcf,'Tag','popupmenu2'),'Value',i);
    Selecionar_com ()
    ct_otm = 1;
    otimo_var()
    if otimo == 1;
        if m < aux1;
            aux2=i;
            aux1=m;
        end  
    end
    set(findobj(gcf,'Tag','text137'),'String',i); % informa o n�mero da itera��o
    pause(0.1) % pausa para atualizar informa��es da interface.
i=i+1
end  

% Se aux1=1000 siguinifica que n�o achou nenhum perfil que atendesse as ...
....condi��es de otimiza��o.
if aux1 == 10000;
    Limpar_dados ();
    errov = 4;
    errof ();
else
    set(findobj(gcf,'Tag','popupmenu2'),'Value',aux2);
    Selecionar_com ();
    
end

disp (aux2);
disp (matriz_tracao);

ct_otm = 0;
otm=0;
    