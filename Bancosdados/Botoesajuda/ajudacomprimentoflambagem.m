function varargout = ajudacomprimentoflambagem(varargin)
% AJUDACOMPRIMENTOFLAMBAGEM MATLAB code for ajudacomprimentoflambagem.fig
%      AJUDACOMPRIMENTOFLAMBAGEM, by itself, creates a new AJUDACOMPRIMENTOFLAMBAGEM or raises the existing
%      singleton*.
%
%      H = AJUDACOMPRIMENTOFLAMBAGEM returns the handle to a new AJUDACOMPRIMENTOFLAMBAGEM or the handle to
%      the existing singleton*.
%
%      AJUDACOMPRIMENTOFLAMBAGEM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AJUDACOMPRIMENTOFLAMBAGEM.M with the given input arguments.
%
%      AJUDACOMPRIMENTOFLAMBAGEM('Property','Value',...) creates a new AJUDACOMPRIMENTOFLAMBAGEM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ajudacomprimentoflambagem_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ajudacomprimentoflambagem_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ajudacomprimentoflambagem

% Last Modified by GUIDE v2.5 05-Sep-2018 14:42:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ajudacomprimentoflambagem_OpeningFcn, ...
                   'gui_OutputFcn',  @ajudacomprimentoflambagem_OutputFcn, ...
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


% --- Executes just before ajudacomprimentoflambagem is made visible.
function ajudacomprimentoflambagem_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ajudacomprimentoflambagem (see VARARGIN)

% Choose default command line output for ajudacomprimentoflambagem
handles.output = hObject;

figcomprimento = imread('tabelacomprimentoflambagem.jpg');
imshow(figcomprimento,'Parent',handles.axes1);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ajudacomprimentoflambagem wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ajudacomprimentoflambagem_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
