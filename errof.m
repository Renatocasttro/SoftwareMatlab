function[]= errof ()
global errov;
global errorv;

switch errov;
    case 1;
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','textofinal'),'String','UM OU MAIS DADOS NAO FORAM INSERIDOS CORRETAMENTE.');
        errorv = '';
    case 2;
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
      set(findobj(gcf,'Tag','textofinal'),'String','PERFIL MONOSSIMETRICO NAO PERMITIDO.');
          errorv = 'NAO PERMITIDO';
    case 3;
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','textofinal'),'String','PERFIL DE ALMA ESBELTA NAO PERMITIDO.');
        errorv = 'NAO PERMITIDO';
    case 4;
        set(findobj(gcf,'Tag','textofinal'),'String','NENHUM PERFIL DO BANCO DE DADOS RESISTE AS SOLICITAÇOES INSERIDAS.');
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        errorv = '';
    case 5;
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','textofinal'),'String','PERFIL COMPRIMIDO MUITO ESBELTO (>200).');
        errorv = 'NAO PERMITIDO';
    case 6;
        set(findobj(gcf,'Tag','textofinal'),'String','MESMO COM ENRIJECEDORES, PERFIL NÃO RESISTIRÁ.');
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        errorv = '';
    case 7;
        set(findobj(gcf,'Tag','textofinal'),'String','DESCULPE, POR ENQUANTO ESTE PROGRAMA NÃO CALCULA TRAÇAO EM PERFIL I.');
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        errorv = 'NAO PERMITIDO';
    case 8;
        set(findobj(gcf,'Tag','textofinal'),'String',' ESBELTEZ DO ELEMENTO ACIMA DO LIMITE');
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        errorv = 'NAO PERMITIDO';       
    case 9;
        set(findobj(gcf,'Tag','erroCt'),'String',' CONFIGURAÇÃO DA LIGAÇÃO INADEQUADA (Ct < 0.60)');
        set(findobj(gcf,'Tag','erroCt'),'ForegroundColor','red');
        errorv = 'NAO PERMITIDO';
    case 10;
        set(findobj(gcf,'Tag','trac7'),'String',' LIGAÇÃO INADEQUADA (Ct < 0.60)');
        set(findobj(gcf,'Tag','trac7'),'ForegroundColor','red');
        errorv = 'NAO PERMITIDO';
    case 11;  % erro de cálculos de CT  
        set(findobj(gcf,'Tag','erroCt'),'String','UM OU MAIS DADOS NÃO FORAM INSERIDOS');
        set(findobj(gcf,'Tag','erroCt'),'ForegroundColor','red');
        errorv = 'NAO PERMITIDO';
    case 12; % erros de cálculo de Cb
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','UM OU MAIS DADOS NÃO FORAM INSERIDOS');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','center');
        errorv = '';
    case 13;% erro de cálculo de Cb 
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','M2 menor que M1 - verfique!');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','center');
        errorv = '';
    case 14; % erro de cálculo de Cb
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','Caso de Cb não selecionado!');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','center');
        errorv = '';
    case 15; % erro de cálculo de Cb
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','M2 não pode ser nulo!');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','center');
        errorv = '';
    case 16; % erro de cálculo de Cb
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
        set(findobj(gcf,'Tag','erroCb'),'String','|M1| não pode ser maior que |M2!!');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','center');
        errorv = '';  
    case 17; % erro de cálculo de Cb
        set(findobj(gcf,'Tag','erroCb'),'Visible','on');
       %set(findobj(gcf,'Tag','erroCb'),'String','Informe parâmetro L1(=1)ou L2(=2)');
        set(findobj(gcf,'Tag','erroCb'),'String','Informe parâmetro válido!');
        set(findobj(gcf,'Tag','erroCb'),'ForegroundColor','red');
        set(findobj(gcf,'Tag','erroCb'),'HorizontalAlignment','center');
        errorv = '';
    case 18 % erro de cáculo de Ct (avancar_Ct.m)
        set(findobj(gcf,'Tag','erroCt'),'String','Quantidades/diâmetro dos parafusos incoerentes com as dimensões do perfil (VERIFIQUE!)');
        set(findobj(gcf,'Tag','erroCt'),'ForegroundColor','red');
        errorv = '';
        
    case 19 % erro de cáculo de Ct (CALCULO_DE_CT.m)
        set(findobj(gcf,'Tag','erroCt'),'String','Selecione caso de conexão das extremeidades do perfil');
        set(findobj(gcf,'Tag','erroCt'),'ForegroundColor','red');
        errorv = '';
    case 20 % erro de utilizaçao de perfil muito esbelto
        set(findobj(gcf,'Tag','textofinal'),'String','Perfil esbelto');
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        errorv = 'NÃO PERMITIDO - esbeltez elevada - acima de 300';
    case 21 % erro de utilizaçao de perfil muito esbelto
        set(findobj(gcf,'Tag','textofinal'),'String','NÃO PERMITIDO - cisalhamento seção T - d/tw > 260');
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        errorv = 'NÃO PERMITIDO - cisalhamento seção T - d/tw > 260';
    case 22 % erro de utilizaçao de perfil I laminado com dimensões inadequadas (mesa esbelta) - Verifique!
        set(findobj(gcf,'Tag','textofinal'),'String','Perfil I laminado com dimensões inadequadas (mesa esbelta) - Verifique!');
        set(findobj(gcf,'Tag','textofinal'),'ForegroundColor','red');
        errorv = 'NÃO PERMITIDO - cisalhamento seção T - d/tw > 260';
end
