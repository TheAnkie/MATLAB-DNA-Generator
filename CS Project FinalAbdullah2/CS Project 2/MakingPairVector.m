global global_struct
% global_struct.somePro
% global_struct.counter
% global_struct.ProPair='';
% global_struct.ProPair=[global_struct.ProPair(1) global_struct.ProPair(2) global_struct.ProPair(3) global_struct.ProPair(4) global_struct.ProPair(5) global_struct.ProPair(6) global_struct.ProPair(7) global_struct.ProPair(8) global_struct.ProPair(9)];
% global_struct.Propair=global_struct.ProPair(end:-1:1);
% global_struct.ProPair=mat2str(global_struct.ProPair);
% handles.hAxes = [handles.axes3, handles.axes4, handles.axes5, handles.axes6, handles.axes7, handles.axes8, handles.axes9, handles.axes10, handles.axes11];
for i=global_struct.a:global_struct.b;
%     if  global_struct.ProPair(i)=='A' || global_struct.ProPair(i)=='T' || global_struct.ProPair(i)=='C' || global_struct.ProPair(i)=='G'
%         i=i+1;
if global_struct.counterZ==1
    global_struct.ProPair(global_struct.a)='A'
elseif global_struct.counterZ==2
    global_struct.ProPair(global_struct.a)='T'
elseif global_struct.counterZ==3
    global_struct.ProPair(global_struct.a)='C'
elseif global_struct.counterZ==4
    global_struct.ProPair(global_struct.a)='G'
end
global_struct.counterZ=0;
global_struct.a=global_struct.a+1
break
end


