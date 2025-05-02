function varargout = Ct_Sold_transv(varargin)
% CT_SOLD_TRANSV MATLAB code for Ct_Sold_transv.fig
%      CT_SOLD_TRANSV, by itself, creates a new CT_SOLD_TRANSV or raises the existing
%      singleton*.
%
%      H = CT_SOLD_TRANSV returns the handle to a new CT_SOLD_TRANSV or the handle to
%      the existing singleton*.
%
%      CT_SOLD_TRANSV('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CT_SOLD_TRANSV.M with the given input arguments.
%
%      CT_SOLD_TRANSV('Property','Value',...) creates a new CT_SOLD_TRANSV or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ct_Sold_transv_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ct_Sold_transv_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ct_Sold_transv

% Last Modified by GUIDE v2.5 25-Nov-2023 11:37:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ct_Sold_transv_OpeningFcn, ...
                   'gui_OutputFcn',  @Ct_Sold_transv_OutputFcn, ...
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


% --- Executes just before Ct_Sold_transv is made visible.
function Ct_Sold_transv_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ct_Sold_transv (see VARARGIN)

% Choose default command line output for Ct_Sold_transv
handles.output = hObject;
%% colocar a inserção das figuras aqui
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Ct_Sold_transv wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%atribuindo imagens aos botões das ligações na interface do Ct_Sold_transv
icone30 = imread('Solda_Trans_I.jpg');
set(handles.icon30,'CData',icone30);
icone31 = imread('Solda_Trans_C.jpg');
set(handles.icon31,'CData',icone31);
icone34 = imread('Solda_Trans_L.jpg');
set(handles.icon34,'CData',icone34);
icone35 = imread('Solda_Trans_T.jpg');
set(handles.icon35,'CData',icone35);



% --- Outputs from this function are returned to the command line.

function varargout = Ct_Sold_transv_OutputFcn(hObject, eventdata, handles) 
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
% desmarca as outras opções
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
% desmarca as outras opções
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
% desmarca as outras opções
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


% --- Executes on button press in icon30.
function icon30_Callback(hObject, eventdata, handles)
% hObject    handle to icon30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over icon30.
function icon30_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to icon30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global avan_ct;
global avan_ct5;
avancar_ct();
if avan_ct==5
% avancar_ct();
avan_ct=0
pause(0.5)
close Ct_Form;
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
