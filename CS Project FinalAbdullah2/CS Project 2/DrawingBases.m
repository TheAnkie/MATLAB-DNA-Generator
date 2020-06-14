global global_struct
handles.hAxes = [handles.axes12, handles.axes13, handles.axes14, handles.axes15, handles.axes16, handles.axes17, handles.axes18, handles.axes20, handles.axes21];
for i=1:9;
    axes(handles.hAxes(i))
    if global_struct.somePro(i)=='A'
        vi=imread('blacktriangle.jpg');
        imshow(vi);
    elseif global_struct.somePro(i)=='T'
        iv=imread('redsquare.jpg');
        imshow(iv);
    elseif global_struct.somePro(i)=='C'
        iiv=imread('bluecircle.jpg');
        imshow(iiv);
    elseif global_struct.somePro(i)=='G'
        iiiv=imread('greenenvelope.jpg');
        imshow(iiiv);
    end
    pause(0.5)
end