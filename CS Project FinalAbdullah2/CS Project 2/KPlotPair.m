global global_struct
handles.KpairAxes = [handles.axes4, handles.axes11, handles.axes12, handles.axes13, handles.axes14, handles.axes15];
for uu=1:6;
    axes(handles.KpairAxes(uu))
    if global_struct.KFpair(uu)=='A'
        vi2=imread('blacktriangle.jpg');
        imshow(vi2);
    elseif global_struct.KFpair(uu)=='T'
        iv2=imread('redsquare.jpg');
        imshow(iv2);
    elseif global_struct.KFpair(uu)=='C'
        iiv2=imread('bluecircle.jpg');
        imshow(iiv2);
    elseif global_struct.KFpair(uu)=='G'
        iiiv2=imread('greenenvelope.jpg');
        imshow(iiiv2);
    end
pause(0.5)
end