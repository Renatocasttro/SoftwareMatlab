function varargout = Perfil_L_Compressao_1(varargin)
% PERFIL_L_COMPRESSAO_1 MATLAB code for Perfil_L_Compressao_1.fig
%      PERFIL_L_COMPRESSAO_1, by itself, creates a new PERFIL_L_COMPRESSAO_1 or raises the existing
%      singleton*.
%
%      H = PERFIL_L_COMPRESSAO_1 returns the handle to a new PERFIL_L_COMPRESSAO_1 or the handle to
%      the existing singleton*.
%
%      PERFIL_L_COMPRESSAO_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERFIL_L_COMPRESSAO_1.M with the given input arguments.
%
%      PERFIL_L_COMPRESSAO_1('Property','Value',...) creates a new PERFIL_L_COMPRESSAO_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Perfil_L_Compressao_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Perfil_L_Compressao_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Perfil_L_Compressao_1

% Last Modified by GUIDE v2.5 04-Jan-2024 17:22:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Perfil_L_Compressao_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Perfil_L_Compressao_1_OutputFcn, ...
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


% --- Executes just before Perfil_L_Compressao_1 is made visible.
function Perfil_L_Compressao_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Perfil_L_Compressao_1 (see VARARGIN)

% Choose default command line output for Perfil_L_Compressao_1
handles.output = hObject;
%% colocar a inserção das figuras aqui
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Perfil_L_Compressao_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%atribuindo imagens aos botões das ligações na interface do Perfil_L_Compressao_1
%icone30 = imread('ligacao1.jpg');
%set(handles.icon30,'CData',icone30);
%icone31 = imread('ligacao2.jpg');
%set(handles.icon31,'CData',icone31);
%icone33 = imread('ligacaoperfilL.jpg');
%set(handles.icon33,'CData',icone33);
%icone34 = imread('ligacao4.jpg');
%set(handles.icon34,'CData',icone34);
%icone35 = imread('ligacao5.jpg');
%set(handles.icon35,'CData',icone35);
%icone36 = imread('ligacaoperfilC.jpg');
%set(handles.icon36,'CData',icone36);
%icone37 = imread('Ttracao1.jpg');
%set(handles.icon37,'CData',icone37);
%icone38 = imread('Ttracao2.jpg');
%set(handles.icon38,'CData',icone38);
%icone39 = imread('Ttracao3.jpg');
%set(handles.icon39,'CData',icone39);


% --- Outputs from this function are returned to the command line.

function varargout = Perfil_L_Compressao_1_OutputFcn(hObject, eventdata, handles) 
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
% desmarca as outras opções
global Compressao_L_Opt;
Compressao_L_Opt=1;

set(handles.radiobutton5,'Value',0);
set(handles.radiobutton6,'Value',0);
set(handles.radiobutton52,'Value',0);
% CALCULO_DE_Ct(Ac,d,tf,An)
% Hint: get(hObject,'Value') returns toggle state of radiobutton50

% --- Executes on button press in radiobutton52.
function radiobutton52_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% desmarca as outras opções
global Compressao_L_Opt;
Compressao_L_Opt=2;
set(handles.radiobutton50,'Value',0);
set(handles.radiobutton5,'Value',0);
set(handles.radiobutton6,'Value',0);
% CALCULO_DE_Ct(Ac,d,tf,An)
% Hint: get(hObject,'Value') returns toggle state of radiobutton52

% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Compressao_L_Cont;
avancar_Perfil_L_Comparessao()
if Compressao_L_Cont==1;
   Compressao_L_Cont=0;
   pause(0.5);
   close Perfil_L_Compressao;
end    


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


% --- Executes on button press in icon35.
function icon35_Callback(hObject, eventdata, handles)
% hObject    handle to icon35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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


% --- Executes on button press in icon38.
function icon38_Callback(hObject, eventdata, handles)
% hObject    handle to icon38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in icon39.
function icon39_Callback(hObject, eventdata, handles)
% hObject    handle to icon39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Compressao_L_Opt;
Compressao_L_Opt=3;
set(handles.radiobutton50,'Value',0);
set(handles.radiobutton52,'Value',0);
set(handles.radiobutton6,'Value',0);

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Compressao_L_Opt;
Compressao_L_Opt=4;
set(handles.radiobutton50,'Value',0);
set(handles.radiobutton52,'Value',0);
set(handles.radiobutton5,'Value',0);

% Hint: get(hObject,'Value') returns toggle state of radiobutton6
