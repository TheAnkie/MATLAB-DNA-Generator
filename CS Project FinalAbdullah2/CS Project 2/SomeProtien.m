function varargout = SomeProtien(varargin)
% SOMEPROTIEN MATLAB code for SomeProtien.fig
%      SOMEPROTIEN, by itself, creates a new SOMEPROTIEN or raises the existing
%      singleton*.
%
%      H = SOMEPROTIEN returns the handle to a new SOMEPROTIEN or the handle to
%      the existing singleton*.
%
%      SOMEPROTIEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOMEPROTIEN.M with the given input arguments.
%
%      SOMEPROTIEN('Property','Value',...) creates a new SOMEPROTIEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SomeProtien_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SomeProtien_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SomeProtien

% Last Modified by GUIDE v2.5 08-Dec-2015 14:50:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SomeProtien_OpeningFcn, ...
                   'gui_OutputFcn',  @SomeProtien_OutputFcn, ...
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


% --- Executes just before SomeProtien is made visible.
function SomeProtien_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SomeProtien (see VARARGIN)
global global_struct
global_struct.counter=1;
% Choose default command line output for SomeProtien
handles.output = hObject;
[Violin, Fs]=audioread('CrashBash.mp3');
sound(Violin, Fs)
close(GeneLoader)
handles.output = hObject;
axes(handles.axes1);
bg=imread('NewDNABg.jpg');
imshow(bg);
set(handles.edit5,'visible','off')
set(handles.edit6,'visible','off')
set(handles.edit7,'visible','off')
set(handles.edit8,'visible','off')
set(handles.proceed,'visible','off')
set(handles.aden,'visible','off')
set(handles.thym,'visible','off')
set(handles.cyto,'visible','off')
set(handles.guan,'visible','off')
set(handles.edit8,'visible','off')
global_struct.b=9;
global_struct.a=1;
global_struct.ProPair='';

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SomeProtien wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SomeProtien_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in drawbases.
function drawbases_Callback(hObject, eventdata, handles)
% hObject    handle to drawbases (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
DrawingBases
    set(handles.thym,'visible','on')
    set(handles.guan,'visible','on')
    set(handles.cyto,'visible','on')
    set(handles.aden,'visible','on')



% --- Executes on button press in proceed.
function proceed_Callback(hObject, eventdata, handles)
% hObject    handle to proceed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
checkFile
close(SomeProtien)
GeneLoader



% --- Executes on button press in keyz.
function keyz_Callback(hObject, eventdata, handles)
% hObject    handle to keyz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.key)
i=imread('PaintKey.jpg');
imshow(i);
set(handles.edit5,'String','Adenine');
set(handles.edit6,'String','Thymine')
set(handles.edit7,'String','Cytosine')
set(handles.edit8,'String','Guanine')
set(handles.edit5,'visible','on')
set(handles.edit6,'visible','on')
set(handles.edit7,'visible','on')
set(handles.edit8,'visible','on')


% --- Executes on button press in generate.
function generate_Callback(hObject, eventdata, handles)
% hObject    handle to generate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct
RandomTable
global_struct.s=get(handles.plotting,'String')
set(handles.plotting,'String',{'Now Plotting';global_struct.somePro});



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cyto.
function cyto_Callback(hObject, eventdata, handles)
% hObject    handle to cyto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct
global_struct.counter
handles.hAxes = [handles.axes3, handles.axes4, handles.axes5, handles.axes6, handles.axes7, handles.axes8, handles.axes9, handles.axes10, handles.axes11];
axes(handles.hAxes(global_struct.counter))
qwop=imread('bluecircle.jpg');
imshow(qwop)
global_struct.counter=global_struct.counter+1
if global_struct.counter==10
     set(handles.thym,'visible','off')
    set(handles.guan,'visible','off')
    set(handles.cyto,'visible','off')
    set(handles.aden,'visible','off')
    set(handles.proceed,'visible','on')
    global_struct.counter=1
end
global_struct.counterZ=3
global_struct.somePro
global_struct.counter
MakingPairVector


% --- Executes on button press in thym.
function thym_Callback(hObject, eventdata, handles)
% hObject    handle to thym (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct
global_struct.counter
handles.hAxes = [handles.axes3, handles.axes4, handles.axes5, handles.axes6, handles.axes7, handles.axes8, handles.axes9, handles.axes10, handles.axes11];
axes(handles.hAxes(global_struct.counter))
qwop=imread('redsquare.jpg');
imshow(qwop)
global_struct.counter=global_struct.counter+1
if global_struct.counter==10
     set(handles.thym,'visible','off')
    set(handles.guan,'visible','off')
    set(handles.cyto,'visible','off')
    set(handles.aden,'visible','off')
    set(handles.proceed,'visible','on')
    global_struct.counter=1
end 
global_struct.counterZ=2
global_struct.somePro
global_struct.counter
MakingPairVector


% --- Executes on button press in aden.
function aden_Callback(hObject, eventdata, handles)
% hObject    handle to aden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct
global_struct.counter
handles.hAxes = [handles.axes3, handles.axes4, handles.axes5, handles.axes6, handles.axes7, handles.axes8, handles.axes9, handles.axes10, handles.axes11];
axes(handles.hAxes(global_struct.counter))
qwop=imread('blacktriangle.jpg');
imshow(qwop)
global_struct.counter=global_struct.counter+1
if global_struct.counter==10
     set(handles.thym,'visible','off')
    set(handles.guan,'visible','off')
    set(handles.cyto,'visible','off')
    set(handles.aden,'visible','off')
    set(handles.proceed,'visible','on')
    global_struct.counter=1
end

global_struct.counterZ=1
global_struct.somePro
global_struct.counter
MakingPairVector




% --- Executes on button press in guan.
function guan_Callback(hObject, eventdata, handles)
% hObject    handle to guan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct
global_struct.counter
handles.hAxes = [handles.axes3, handles.axes4, handles.axes5, handles.axes6, handles.axes7, handles.axes8, handles.axes9, handles.axes10, handles.axes11];
axes(handles.hAxes(global_struct.counter))
qwop=imread('greenenvelope.jpg');
imshow(qwop)
global_struct.counter=global_struct.counter+1
if global_struct.counter==10
     set(handles.thym,'visible','off')
    set(handles.guan,'visible','off')
    set(handles.cyto,'visible','off')
    set(handles.aden,'visible','off')
     set(handles.proceed,'visible','on')
    global_struct.counter=1
end
global_struct.counterZ=4
global_struct.somePro
global_struct.counter
MakingPairVector
