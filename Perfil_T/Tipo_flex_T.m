function varargout = Tipo_flex_T(varargin)
% TIPO_FLEX_T MATLAB code for Tipo_flex_T.fig
%      TIPO_FLEX_T, by itself, creates a new TIPO_FLEX_T or raises the existing
%      singleton*.
%
%      H = TIPO_FLEX_T returns the handle to a new TIPO_FLEX_T or the handle to
%      the existing singleton*.
%
%      TIPO_FLEX_T('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIPO_FLEX_T.M with the given input arguments.
%
%      TIPO_FLEX_T('Property','Value',...) creates a new TIPO_FLEX_T or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tipo_flex_T_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tipo_flex_T_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tipo_flex_T

% Last Modified by GUIDE v2.5 22-Dec-2023 17:29:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tipo_flex_T_OpeningFcn, ...
                   'gui_OutputFcn',  @Tipo_flex_T_OutputFcn, ...
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


% --- Executes just before Tipo_flex_T is made visible.
function Tipo_flex_T_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tipo_flex_T (see VARARGIN)

% Choose default command line output for Tipo_flex_T
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Tipo_flex_T wait for user response (see UIRESUME)
% uiwait(handles.figure1);
iconeT1 = imread('Flex_T_mesa_C.jpg');
set(handles.iconT1,'CData',iconeT1);
iconeT2 = imread('Flex_T_mesa_T.jpg');
set(handles.iconT2,'CData',iconeT2);

% --- Outputs from this function are returned to the command line.
function varargout = Tipo_flex_T_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in iconT1.
function iconT1_Callback(hObject, eventdata, handles)
global B;
global d;
global Lb;
global Iy;
global J;
global TB; % Parâmetro que serve para identificar o tipo equação de cáculo do parámetro B (se a mesa esta comprimida, TB=1, ou tracionada, TB=2
% hObject    handle to iconT1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TB=1;
B=(2.3*d/Lb)*sqrt(Iy/J);
set (findobj (gcf,'Tag','text3'),'String','Perfil T - alma tracionada');
pause(0.5);
close(Tipo_flex_T);

% --- Executes on button press in iconT2.
function iconT2_Callback(hObject, eventdata, handles)
global B;
global d;
global Lb;
global Iy;
global J;
global TB;
% hObject    handle to iconT2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TB=2;
B=-(2.3*d/Lb)*sqrt(Iy/J);
set (findobj (gcf,'Tag','text3'),'String','Perfil T - alma comprimida');
pause(0.5);
close(Tipo_flex_T);
