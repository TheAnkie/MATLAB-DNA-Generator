function varargout = KeratinDNAInteractor(varargin)
% KERATINDNAINTERACTOR MATLAB code for KeratinDNAInteractor.fig
%      KERATINDNAINTERACTOR, by itself, creates a new KERATINDNAINTERACTOR or raises the existing
%      singleton*.
%
%      H = KERATINDNAINTERACTOR returns the handle to a new KERATINDNAINTERACTOR or the handle to
%      the existing singleton*.
%
%      KERATINDNAINTERACTOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KERATINDNAINTERACTOR.M with the given input arguments.
%
%      KERATINDNAINTERACTOR('Property','Value',...) creates a new KERATINDNAINTERACTOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KeratinDNAInteractor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KeratinDNAInteractor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KeratinDNAInteractor

% Last Modified by GUIDE v2.5 02-Dec-2015 12:37:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KeratinDNAInteractor_OpeningFcn, ...
                   'gui_OutputFcn',  @KeratinDNAInteractor_OutputFcn, ...
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


% --- Executes just before KeratinDNAInteractor is made visible.
function KeratinDNAInteractor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KeratinDNAInteractor (see VARARGIN)

% Choose default command line output for KeratinDNAInteractor
clear sound
close(GeneLoader)
[Violin, Fs]=audioread('CrashBash.mp3');
sound(Violin, Fs)
handles.output = hObject;
axes(handles.Kaxes);
bg=imread('NewDNABg.jpg');
imshow(bg);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KeratinDNAInteractor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KeratinDNAInteractor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plotkera.
function plotkera_Callback(hObject, eventdata, handles)
% hObject    handle to plotkera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
KeratinBrokenPairs
MakePairVector
global global_struct 
global j
j='abcdef';
handles.hAxes = [handles.axes5, handles.axes6, handles.axes7, handles.axes8, handles.axes9, handles.axes10];
for i=1:6;
    axes(handles.hAxes(i))
    if global_struct.kera(i)=='A'
        vi=imread('blacktriangle.jpg');
        imshow(vi);
    elseif global_struct.kera(i)=='T'
        iv=imread('redsquare.jpg');
        imshow(iv);
    elseif global_struct.kera(i)=='C'
        iiv=imread('bluecircle.jpg');
        imshow(iiv);
    elseif global_struct.kera(i)=='G'
        iiiv=imread('greenenvelope.jpg');
        imshow(iiiv);
    end
% axes(handles.hAxes(i))
pause(0.5)
end
set(handles.KeraPair,'visible','on')




% --- Executes on button press in KeraPair.
function KeraPair_Callback(hObject, eventdata, handles)
% hObject    handle to KeraPair (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
PlotIncorrectPair
set(handles.correct,'visible','on')
set(handles.incorrect,'visible','on')


% --- Executes on button press in Kerakey.
function Kerakey_Callback(hObject, eventdata, handles)
% hObject    handle to Kerakey (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.key)
i=imread('PaintKey.jpg');
imshow(i);
set(handles.edit1,'String','Adenine');
set(handles.edit2,'String','Thymine')
set(handles.edit3,'String','Cytosine')
set(handles.edit4,'String','Guanine')
set(handles.edit1,'visible','on')
set(handles.edit2,'visible','on')
set(handles.edit3,'visible','on')
set(handles.edit4,'visible','on')



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in correct.
function correct_Callback(hObject, eventdata, handles)
% hObject    handle to correct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.incorrect,'visible','off')
h = msgbox({'INCORRECT!'},'Remember');
pause(3)
close(h)
h = msgbox({'If you look closely, you will see that Adenine is paired with Cytosine and Guanine is paired with Thymine! This can never be the case as Adenine always pairs with Thymine and Cytosine always pairs with Guanine.'},'Remember');
set(handles.IncFix,'visible','on')




% --- Executes on button press in incorrect.
function incorrect_Callback(hObject, eventdata, handles)
% hObject    handle to incorrect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.correct,'visible','off')
h = msgbox({'Incase you guessed that the pairing was incorrect, the error is that the bases have been paired incorrectly. Adenine has been paired with Cytosine and Thymine has been paired with Guanine.'},'Remember');
pause(10)
close(h)
h = msgbox({'Now fix the error!'},'Remember');
pause(3)
close(h)
set(handles.IncFix,'visible','on')



% --- Executes on button press in IncFix.
function IncFix_Callback(hObject, eventdata, handles)
% hObject    handle to IncFix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
KeratinFix
KPlotPair
h = msgbox({'Successful'},'Remember');%use a variable to set locations 
pause(3)
close(h)
pause(3)
clear sound
close(KeratinDNAInteractor)
clear sound
GeneLoader

