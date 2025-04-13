function [] = banco_Ccom()
global f1;
global C_lam2_novo;
global d;
global h;
global tf;
global tw;
global bf;
global Ag;
global Ix;
global Iy;
global ix;
global iy;
global J;
global Wx;
global Wy;
global Zx;
global Zy;
global m;
global xg;
global Cw;
global perfilname;

%valor numerico correspondente ao perfil marcado pelo usuario na lista
marca = get(findobj(gcf,'Tag','popupmenu2'),'Value');
%salvando o nome do perfil da lista
b = get(findobj(gcf,'Tag','popupmenu2'),'String');
perfilname = b(marca);
       if f1 == 1;
%                 %cada par ordenado corresponde a um par linha coluna da
%                     %matriz de banco de dados
%                     d = C_lam2_novo(marca,2);
%                     tf = C_lam2_novo(marca,6);
%                     tw = C_lam2_novo(marca,4);
%                     bf = C_lam2_novo(marca,7);
%                     Ag = C_lam2_novo(marca,3);
%                     Ix = C_lam2_novo(marca,9);
%                     Iy = C_lam2_novo(marca,13);
%                     ix = C_lam2_novo(marca,11);
%                     iy = C_lam2_novo(marca,15);
%                     Wx = C_lam2_novo(marca,10);
%                     Wy = C_lam2_novo(marca,14);
%                     xg = C_lam2_novo(marca,16);
%                     m = C_lam2_novo(marca,1);
%                     
%               
       else
                    d = C_lam2_novo(marca,2);
                    tf = C_lam2_novo(marca,6);
                    tw = C_lam2_novo(marca,4);
                    bf = C_lam2_novo(marca,7);
                    Ag = C_lam2_novo(marca,3);
                    Ix = C_lam2_novo(marca,9);
                    Iy = C_lam2_novo(marca,13);
                    ix = C_lam2_novo(marca,11);
                    iy = C_lam2_novo(marca,15);
                    Wx = C_lam2_novo(marca,10);
                    Wy = C_lam2_novo(marca,14);
                    xg = C_lam2_novo(marca,16);
                    m = C_lam2_novo(marca,1);
                    J = C_lam2_novo(marca,17);
                    Cw = C_lam2_novo(marca,18);
                    Zy = C_lam2_novo(marca,19);
                
       end
       
       %imprimindo os valores do banco de dados nos seus respectivos
       %espaços na interface grafica
       
           if f1==1;
%                 set(findobj(gcf,'Tag','dimc1'),'String',d);
%                 set(findobj(gcf,'Tag','dimc2'),'String',tf)
%                 set(findobj(gcf,'Tag','dimc3'),'String',tw);
%                 set(findobj(gcf,'Tag','dimc4'),'String',bf);
%                 set(findobj(gcf,'Tag','dimc7'),'String',Ag)
%                 set(findobj(gcf,'Tag','dimc8'),'String',Ix);
%                 set(findobj(gcf,'Tag','dimc9'),'String',Iy);
%                 set(findobj(gcf,'Tag','dimc10'),'String',ix);
%                 set(findobj(gcf,'Tag','dimc11'),'String',iy);
%                 %set(findobj(gcf,'Tag','dimc12'),'String',J);
%                 set(findobj(gcf,'Tag','dimc13'),'String',Wx);
%                 set(findobj(gcf,'Tag','dimc14'),'String',Wy);
%                 %set(findobj(gcf,'Tag','dimc15'),'String',Zx);
%                 set(findobj(gcf,'Tag','dimc16'),'String',Zy);
%                 set(findobj(gcf,'Tag','dimc17'),'String',m);
            else
                set(findobj(gcf,'Tag','dimc1'),'String',d);
                set(findobj(gcf,'Tag','dimc2'),'String',tf)
                set(findobj(gcf,'Tag','dimc3'),'String',tw);
                set(findobj(gcf,'Tag','dimc4'),'String',bf);
                set(findobj(gcf,'Tag','dimc5'),'String',xg);
                set(findobj(gcf,'Tag','dimc7'),'String',Ag)
                set(findobj(gcf,'Tag','dimc8'),'String',Ix);
                set(findobj(gcf,'Tag','dimc9'),'String',Iy);
                set(findobj(gcf,'Tag','dimc10'),'String',ix);
                set(findobj(gcf,'Tag','dimc11'),'String',iy);
                %set(findobj(gcf,'Tag','dimc12'),'String',J);
                set(findobj(gcf,'Tag','dimc13'),'String',Wx);
                set(findobj(gcf,'Tag','dimc14'),'String',Wy);
                %set(findobj(gcf,'Tag','dimc15'),'String',Zx);
                set(findobj(gcf,'Tag','dimc16'),'String',Zy);
                set(findobj(gcf,'Tag','dimc17'),'String',m);
           end
           
      
                 
    

