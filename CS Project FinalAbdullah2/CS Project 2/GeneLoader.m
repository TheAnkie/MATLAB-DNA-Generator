function varargout = GeneLoader(varargin)
% GENELOADER MATLAB code for GeneLoader.fig
%      GENELOADER, by itself, creates a new GENELOADER or raises the existing
%      singleton*.
%
%      H = GENELOADER returns the handle to a new GENELOADER or the handle to
%      the existing singleton*.
%
%      GENELOADER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENELOADER.M with the given input arguments.
%
%      GENELOADER('Property','Value',...) creates a new GENELOADER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GeneLoader_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GeneLoader_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GeneLoader

% Last Modified by GUIDE v2.5 24-Nov-2015 15:15:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GeneLoader_OpeningFcn, ...
                   'gui_OutputFcn',  @GeneLoader_OutputFcn, ...
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


% --- Executes just before GeneLoader is made visible.
function GeneLoader_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GeneLoader (see VARARGIN)

% Choose default command line output for GeneLoader
clear sound
handles.output = hObject;
[Violin, Fs]=audioread('CrashBash.mp3');
sound(Violin, Fs)
axes(handles.axes);
bg=imread('NewDNABg.jpg');
imshow(bg);
global global_struct


guidata(hObject, handles);

        
% --- Outputs from this function are returned to the command line.
function varargout = GeneLoader_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in haem.
function haem_Callback(hObject, eventdata, handles)
% hObject    handle to haem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
DNAinteractor
clear sound
close(GeneLoader);





% --- Executes on button press in help.
function help_Callback(hObject, eventdata, handles)
% hObject    handle to help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = msgbox({'Adenine pairs with Thymine and vice versa' 'Cytosine pairs with Guanine and vice versa'},'Remember');


% --- Executes on button press in kera.
function kera_Callback(hObject, eventdata, handles)
% hObject    handle to kera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
KeratinDNAInteractor
clear sound
close(GeneLoader)

% --- Executes on button press in some.
function some_Callback(hObject, eventdata, handles)
% hObject    handle to some (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SomeProtien
clear sound
close(GeneLoader) 
