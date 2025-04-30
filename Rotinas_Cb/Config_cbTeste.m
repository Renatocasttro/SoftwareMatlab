function[] = Config_cbTeste(handles)

% Inserção de imagens dos casos mais usais de carregamento para cálculo do
% parâmetro Cb nas faces dos botões de seleção de casos.
% insere a imagem cb_caso1.jpg no primeiro botão (Cb_icon1) 
icone_cb1=imread('cb_caso1.jpg');
set(handles.Cb_icon1,'CData',icone_cb1);

% insere a imagem cb_caso2.jpg no segundo botão (Cb_icon2) 
icone_cb2=imread('cb_caso2.jpg');
set(handles.Cb_icon2,'CData',icone_cb2);

% insere a imagem cb_caso3.jpg no terceiro botão (Cb_icon3) 
icone_cb3=imread('cb_caso3.jpg');
set(handles.Cb_icon3,'CData',icone_cb3);

% insere a imagem cb_caso4.jpg no quarto botão (Cb_icon4) 
icone_cb4=imread('cb_caso4.jpg');
set(handles.Cb_icon4,'CData',icone_cb4);

% insere a imagem cb_caso5.jpg no quinto botão (Cb_icon5) 
icone_cb5=imread('cb_caso5.jpg');
set(handles.Cb_icon5,'CData',icone_cb5);

% insere a imagem cb_caso6.jpg no sexto botão (Cb_icon6) 
icone_cb6=imread('cb_caso6.jpg');
set(handles.Cb_icon6,'CData',icone_cb6);

% insere a imagem cb_caso7.jpg no ssetimo botão (Cb_icon7) 
icone_cb7=imread('cb_caso7.jpg');
set(handles.cb_icon7,'CData',icone_cb7);
end
