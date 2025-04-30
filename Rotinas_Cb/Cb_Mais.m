function varargout = Cb_Mais(varargin)
% CB_MAIS MATLAB code for Cb_Mais.fig
%      CB_MAIS, by itself, creates a new CB_MAIS or raises the existing
%      singleton*.
%
%      H = CB_MAIS returns the handle to a new CB_MAIS or the handle to
%      the existing singleton*.
%
%      CB_MAIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CB_MAIS.M with the given input arguments.
%
%      CB_MAIS('Property','Value',...) creates a new CB_MAIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Cb_Mais_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Cb_Mais_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Cb_Mais

% Last Modified by GUIDE v2.5 31-Aug-2023 17:12:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Cb_Mais_OpeningFcn, ...
                   'gui_OutputFcn',  @Cb_Mais_OutputFcn, ...
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


% --- Executes just before Cb_Mais is made visible.
function Cb_Mais_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Cb_Mais (see VARARGIN)

% Choose default command line output for Cb_Mais
handles.output = hObject;
% insere uma figura com mais opções de valores de Cb
opcoes_Cb = imread('Cb_mais.JPG');
imshow(opcoes_Cb,'Parent',handles.axes1);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Cb_Mais wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Cb_Mais_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
% Armazema em Cb1 o valor escolhido na tabela apresentada na tela.
%global Cb1;
%Cb1=str2double(get(findobj(gcf,'Tag','edit1'),'string'));
% Alternativamente pode ser feito chamando uma função, conforme mostrado
% abaixo:
Cb_Informar_Valor()

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Cb_Mais;
