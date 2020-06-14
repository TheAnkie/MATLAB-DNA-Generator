function varargout = DNAinteractor(varargin)
% DNAINTERACTOR MATLAB code for DNAinteractor.fig
%      DNAINTERACTOR, by itself, creates aa new DNAINTERACTOR or raises the existing
%      singleton*.
%
%      H = DNAINTERACTOR returns the handle to aa new DNAINTERACTOR or the handle to
%      the existing singleton*.
%
%      DNAINTERACTOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DNAINTERACTOR.M with the given input arguments.
%
%      DNAINTERACTOR('Property','Value',...) creates aa new DNAINTERACTOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DNAinteractor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DNAinteractor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE'pp Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DNAinteractor

% Last Modified by GUIDE v2.5 02-Dec-2015 06:42:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DNAinteractor_OpeningFcn, ...
                   'gui_OutputFcn',  @DNAinteractor_OutputFcn, ...
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


% --- Executes just before DNAinteractor is made visible.
function DNAinteractor_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DNAinteractor (see VARARGIN)

% Choose default command line output for DNAinteractor
handles.output = hObject;
clear sound
set(handles.nowplot,'visible','off')
set(handles.adenkey,'visible','off')
set(handles.cytokey,'visible','off')
set(handles.guakey,'visible','off')
set(handles.thykey,'visible','off')
[Violin, Fs]=audioread('CrashBash.mp3');
sound(Violin, Fs)
global global_struct
global j
j='abcdef';
axes(handles.axes1);
bg=imread('NewDNABg.jpg');
imshow(bg);
% plot([0 100],[0,100],'r');
guidata(hObject, handles);

% UIWAIT makes DNAinteractor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DNAinteractor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in toolbox.
function toolbox_Callback(hObject, eventdata, handles)
% hObject    handle to toolbox (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.key)
i=imread('PaintKey.jpg');
imshow(i);
set(handles.adenkey,'visible','on')
set(handles.cytokey,'visible','on')
set(handles.guakey,'visible','on')
set(handles.thykey,'visible','on')
set(handles.adenkey,'String','Adenine');
set(handles.thykey,'String','Thymine')
set(handles.cytokey,'String','Cytosine')
set(handles.guakey,'String','Guanine')




function adenkey_Callback(hObject, eventdata, handles)
% hObject    handle to adenkey (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of adenkey as text
%        str2double(get(hObject,'String')) returns contents of adenkey as aa double



% --- Executes during object creation, after setting all properties.
function adenkey_CreateFcn(hObject, eventdata, handles)
% hObject    handle to adenkey (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aa white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function thykey_Callback(hObject, eventdata, handles)
% hObject    handle to thykey (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thykey as text
%        str2double(get(hObject,'String')) returns contents of thykey as aa double


% --- Executes during object creation, after setting all properties.
function thykey_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thykey (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aa white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cytokey_Callback(hObject, eventdata, handles)
% hObject    handle to cytokey (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cytokey as text
%        str2double(get(hObject,'String')) returns contents of cytokey as aa double


% --- Executes during object creation, after setting all properties.
function cytokey_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cytokey (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aa white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guakey_Callback(hObject, eventdata, handles)
% hObject    handle to guakey (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guakey as text
%        str2double(get(hObject,'String')) returns contents of guakey as aa double


% --- Executes during object creation, after setting all properties.
function guakey_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guakey (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aa white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plothaem.
function plothaem_Callback(hObject, eventdata, handles)
% hObject    handle to plothaem (see GCBO)
% eventdata  reserved - to be defined in aa future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MakePairVector
global global_struct 
global j
global_struct.haem='AATGACTGCTAGTCA';
% axes(handles.aa);
% plot([0 100],[0,100],'r');
% v=imread('blacktriangle.jpg');
% imshow(v);
j='abcdef';
handles.hAxes = [handles.aa, handles.b, handles.c, handles.d, handles.e, handles.f];
for i=1:6;
    axes(handles.hAxes(i))
    if global_struct.haem(i)=='A'
        vi=imread('blacktriangle.jpg');
        imshow(vi);
    elseif global_struct.haem(i)=='T'
        iv=imread('redsquare.jpg');
        imshow(iv);
    elseif global_struct.haem(i)=='C'
        iiv=imread('bluecircle.jpg');
        imshow(iiv);
    elseif global_struct.haem(i)=='G'
        iiiv=imread('greenenvelope.jpg');
        imshow(iiiv);
    end
% axes(handles.hAxes(i))
pause(0.5)
end
set(handles.pair,'visible','on')
set(handles.nowplot,'visible','on')
get(handles.nowplot,'String')
set(handles.nowplot,'String',{'You just plotted';'AATGAC'})


% axes(handles.g);
% handles.hAxes1 = [handles.h, handles.k, handles.m, handles.n];
% for pp=1:4
%     i_line=imread('blackline.gif');
%     imshow(i_line);
%     axes(handles.hAxes1(pp));
% end


% --- Executes on button press in pair.
function pair_Callback(hObject, eventdata, handles)
% hObject    handle to pair (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plotpair
y=msgbox({'This was a simple demonstration' 'The pairs made here are correct' 'Adenine with Thymine and Cytosine with Guanine'},'Conclusion');
pause(6)
close(y)
close(DNAinteractor)
clear sound
GeneLoader
% axes(handles.axes1)
% uistack('bottom')
% plot([75 338],[144 144],'y')
