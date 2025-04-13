function varargout = ajudacb(varargin)
% AJUDACB MATLAB code for ajudacb.fig
%      AJUDACB, by itself, creates a new AJUDACB or raises the existing
%      singleton*.
%
%      H = AJUDACB returns the handle to a new AJUDACB or the handle to
%      the existing singleton*.
%
%      AJUDACB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AJUDACB.M with the given input arguments.
%
%      AJUDACB('Property','Value',...) creates a new AJUDACB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ajudacb_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ajudacb_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ajudacb

% Last Modified by GUIDE v2.5 05-Sep-2018 15:31:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ajudacb_OpeningFcn, ...
                   'gui_OutputFcn',  @ajudacb_OutputFcn, ...
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


% --- Executes just before ajudacb is made visible.
function ajudacb_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ajudacb (see VARARGIN)

% Choose default command line output for ajudacb
handles.output = hObject;
figcb = imread('cbusuais.PNG');
imshow(figcb,'Parent',handles.axes1);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ajudacb wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ajudacb_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
