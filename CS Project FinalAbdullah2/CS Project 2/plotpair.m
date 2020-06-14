global global_struct
handles.pairAxes = [handles.g, handles.h, handles.pp, handles.p, handles.q, handles.r];
for uu=1:6;
    axes(handles.pairAxes(uu))
    if global_struct.pair(uu)=='A'
        vi2=imread('blacktriangle.jpg');
        imshow(vi2);
    elseif global_struct.pair(uu)=='T'
        iv2=imread('redsquare.jpg');
        imshow(iv2);
    elseif global_struct.pair(uu)=='C'
        iiv2=imread('bluecircle.jpg');
        imshow(iiv2);
    elseif global_struct.pair(uu)=='G'
        iiiv2=imread('greenenvelope.jpg');
        imshow(iiiv2);
    end
pause(0.5)
end