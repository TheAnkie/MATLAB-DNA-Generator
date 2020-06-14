global global_struct
global_struct.counter
handles.hAxes = [handles.axes3, handles.axes4, handles.axes5, handles.axes6, handles.axes7, handles.axes8, handles.axes9, handles.axes10, handles.axes11];
axes(handles.hAxes(global_struct.counter))
qwop=imread('blacktriangle.jpg');
imshow(qwop)
global_struct.counter=global_struct.counter+1
