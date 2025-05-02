function varargout = CtI(varargin)
% CTI MATLAB code for CtI.fig
%      CTI, by itself, creates a new CTI or raises the existing
%      singleton*.
%
%      H = CTI returns the handle to a new CTI or the handle to
%      the existing singleton*.
%
%      CTI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CTI.M with the given input arguments.
%
%      CTI('Property','Value',...) creates a new CTI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CtI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CtI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CtI

% Last Modified by GUIDE v2.5 21-Feb-2025 17:26:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CtI_OpeningFcn, ...
                   'gui_OutputFcn',  @CtI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
               

if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before CtI is made visible.
function CtI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CtI (see VARARGIN)

% Choose default command line output for CtI
handles.output = hObject;
%% colocar a inserção das figuras aqui
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes CtI wait for user response (see UIRESUME)
% uiwait(handles.figure3);
%atribuindo imagens aos botões das ligações na interface do CtI
icone30 = imread('Itracao19.jpg');
set(handles.icon30,'CData',icone30);
icone31 = imread('Itracao29.jpg');
set(handles.icon31,'CData',icone31);
icone33 = imread('Itracao39.jpg');
set(handles.icon33,'CData',icone33);
icone34 = imread('Itracao49.jpg');
set(handles.icon34,'CData',icone34);
icone35 = imread('Itracao59.jpg');
set(handles.icon35,'CData',icone35);
icone36 = imread('Itracao69.jpg');
set(handles.icon36,'CData',icone36);
icone37 = imread('Itracao79.jpg');
set(handles.icon37,'CData',icone37);
icone38 = imread('Itracao89.jpg');
set(handles.icon38,'CData',icone38);
icone39= imread('Itracao99.jpg');
set(handles.icon39,'CData',icone39);


% --- Outputs from this function are returned to the command line.

function varargout = CtI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton50.
function radiobutton50_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global TpCt;
TpCt = 50;
% desmarca as outras alternativas
set(handles.radiobutton51,'Value',0);
set(handles.radiobutton52,'Value',0);
% CALCULO_DE_Ct(Ac,d,tf,An)
% Hint: get(hObject,'Value') returns toggle state of radiobutton50


% --- Executes on button press in radiobutton51.
function radiobutton51_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global TpCt;
TpCt = 51;
% desmarca as outras alternativas
set(handles.radiobutton50,'Value',0);
set(handles.radiobutton52,'Value',0);

% CALCULO_DE_Ct(Ac,d,tf,An)
% Hint: get(hObject,'Value') returns toggle state of radiobutton51

% --- Executes on button press in radiobutton52.
function radiobutton52_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global TpCt;
TpCt = 52;
set(handles.radiobutton50,'Value',0);
set(handles.radiobutton51,'Value',0);
% CALCULO_DE_Ct(Ac,d,tf,An)
% Hint: get(hObject,'Value') returns toggle state of radiobutton52

% --- Executes on button press in icon33.
function icon33_Callback(hObject, eventdata, handles)
% hObject    handle to icon33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in icon31.
function icon31_Callback(hObject, eventdata, handles)
% hObject    handle to icon31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% CtTv - tipo de vínculo nas extremidades das barras para cálculo de CT
global CtTv;
CtTv=4

% --- Executes on button press in icon30.
function icon30_Callback(hObject, eventdata, handles)
% hObject    handle to icon30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% CtTv - tipo de vínculo nas extremidades das barras para cálculo de CT
global CtTv;
CtTv=1

function dimc50_Callback(hObject, eventdata, handles)
% hObject    handle to dimc50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimc50 as text
%        str2double(get(hObject,'String')) returns contents of dimc50 as a double


% --- Executes during object creation, after setting all properties.
function dimc50_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimc50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dimc51_Callback(hObject, eventdata, handles)
% hObject    handle to dimc51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimc51 as text
%        str2double(get(hObject,'String')) returns contents of dimc51 as a double


% --- Executes during object creation, after setting all properties.
function dimc51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimc51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dimc52_Callback(hObject, eventdata, handles)
% hObject    handle to dimc52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimc52 as text
%        str2double(get(hObject,'String')) returns contents of dimc52 as a double


% --- Executes during object creation, after setting all properties.
function dimc52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimc52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dimc60_Callback(hObject, eventdata, handles)
% hObject    handle to dimc60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimc60 as text
%        str2double(get(hObject,'String')) returns contents of dimc60 as a double


% --- Executes during object creation, after setting all properties.
function dimc60_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimc60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dimc61_Callback(hObject, eventdata, handles)
% hObject    handle to dimc61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimc61 as text
%        str2double(get(hObject,'String')) returns contents of dimc61 as a double


% --- Executes during object creation, after setting all properties.
function dimc61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimc61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dimc62_Callback(hObject, eventdata, handles)
% hObject    handle to dimc62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimc62 as text
%        str2double(get(hObject,'String')) returns contents of dimc62 as a double


% --- Executes during object creation, after setting all properties.
function dimc62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimc62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% global avan_ct;
% avancar_ct();
% % Neste caso os banco apresentou pelo menos algum perfil que ...
% ... atendeu as condições relacionadas aos vínculos externos e ...
%     ...realizará as verificões de dimensionamento à tração.
% if avan_ct==4
% % avancar_ct();
% pause(0.5);
% close CtI;
% end 
pause(0.5);
close CtI;
% Neste caso os banco não conseguiu achar no banco de dados perfis que ...
... atendessem as restrições de vínclulos externos. Será necessário rever...
    ...estas condições (diâmetro dos parafusos, quantidades na seção e ...
    ... distâncias entre seções de parafusos ou soldas)
% if avan_ct==5
%     pause(0.5);
%     close CtI;
% end

% --- Executes during object creation, after setting all properties.
function pushbutton40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function dimc59_Callback(hObject, eventdata, handles)
% hObject    handle to dimc59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimc59 as text
%        str2double(get(hObject,'String')) returns contents of dimc59 as a double


% --- Executes during object creation, after setting all properties.
function dimc59_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimc59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dimc48_Callback(hObject, eventdata, handles)
% hObject    handle to dimc48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimc48 as text
%        str2double(get(hObject,'String')) returns contents of dimc48 as a double


% --- Executes during object creation, after setting all properties.
function dimc48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimc48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in icon34.
function icon34_Callback(hObject, eventdata, handles)
% hObject    handle to icon34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% CtTv - tipo de vínculo nas extremidades das barras para cálculo de CT
global CtTv;
CtTv=2;

% --- Executes on button press in icon35.
function icon35_Callback(hObject, eventdata, handles)
% hObject    handle to icon35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% CtTv - tipo de vínculo nas extremidades das barras para cálculo de CT
global CtTv;
CtTv=5;

% --- Executes on button press in icon36.
function icon36_Callback(hObject, eventdata, handles)
% hObject    handle to icon36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in icon37.
function icon37_Callback(hObject, eventdata, handles)
% hObject    handle to icon37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% CtTv - tipo de vínculo nas extremidades das barras para cálculo de CT
global CtTv;
CtTv=3

% --- Executes on button press in icon38.
function icon38_Callback(hObject, eventdata, handles)
% hObject    handle to icon38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% CtTv - tipo de vínculo nas extremidades das barras para cálculo de CT
global CtTv;
CtTv=6

% --- Executes on button press in icon39.
function icon39_Callback(hObject, eventdata, handles)
% hObject    handle to icon39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in icon38.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to icon38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global CtTv;
CtTv=6


% --- Executes on button press in Calcular_CTI.
function Calcular_CTI_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular_CTI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
avancar_ct();
