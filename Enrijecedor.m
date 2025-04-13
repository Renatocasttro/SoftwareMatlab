function varargout = Enrijecedor(varargin)
%ENRIJECEDOR M-file for Enrijecedor.fig
%      ENRIJECEDOR, by itself, creates a new ENRIJECEDOR or raises the existing
%      singleton*.
%
%      H = ENRIJECEDOR returns the handle to a new ENRIJECEDOR or the handle to
%      the existing singleton*.
%
%      ENRIJECEDOR('Property','Value',...) creates a new ENRIJECEDOR using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to Enrijecedor_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      ENRIJECEDOR('CALLBACK') and ENRIJECEDOR('CALLBACK',hObject,...) call the
%      local function named CALLBACK in ENRIJECEDOR.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Enrijecedor

% Last Modified by GUIDE v2.5 01-Nov-2018 00:24:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Enrijecedor_OpeningFcn, ...
                   'gui_OutputFcn',  @Enrijecedor_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before Enrijecedor is made visible.
function Enrijecedor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for Enrijecedor
handles.output = hObject;


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Enrijecedor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Enrijecedor_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ecx5_Callback(hObject, eventdata, handles)
% hObject    handle to ecx5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecx5 as text
%        str2double(get(hObject,'String')) returns contents of ecx5 as a double


% --- Executes during object creation, after setting all properties.
function ecx5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecx5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ecx1_Callback(hObject, eventdata, handles)
% hObject    handle to ecx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecx1 as text
%        str2double(get(hObject,'String')) returns contents of ecx1 as a double


% --- Executes during object creation, after setting all properties.
function ecx1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcular1.
function calcular1_Callback(hObject, eventdata, handles)
% hObject    handle to calcular1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
enrij_int ();



function ecx2_Callback(hObject, eventdata, handles)
% hObject    handle to ecx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecx2 as text
%        str2double(get(hObject,'String')) returns contents of ecx2 as a double


% --- Executes during object creation, after setting all properties.
function ecx2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ecx3_Callback(hObject, eventdata, handles)
% hObject    handle to ecx3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecx3 as text
%        str2double(get(hObject,'String')) returns contents of ecx3 as a double


% --- Executes during object creation, after setting all properties.
function ecx3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecx3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcular2.
function calcular2_Callback(hObject, eventdata, handles)
% hObject    handle to calcular2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
enrij_apoio ();



function ecx4_Callback(hObject, eventdata, handles)
% hObject    handle to ecx4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecx4 as text
%        str2double(get(hObject,'String')) returns contents of ecx4 as a double


% --- Executes during object creation, after setting all properties.
function ecx4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecx4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcular3.
function calcular3_Callback(hObject, eventdata, handles)
% hObject    handle to calcular3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
calc_espac ();


% --- Executes on button press in otimizar1.
function otimizar1_Callback(hObject, eventdata, handles)
% hObject    handle to otimizar1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
otm_espac ();


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
avancar_enrij();
