global global_struct 
global_struct.somePro
global_struct.ProPair
global_struct.Check='';
for i=1:numel(global_struct.somePro);
    if global_struct.somePro(i)=='A'
        global_struct.Check(i)='T'
    elseif global_struct.somePro(i)=='T'
        global_struct.Check(i)='A'
    elseif global_struct.somePro(i)=='C'
        global_struct.Check(i)='G'
    elseif global_struct.somePro(i)=='G'
        global_struct.Check(i)='C'
    end
    pause(0.2)
end


if global_struct.ProPair==global_struct.Check
  h=msgbox({'Congratulations! You plotted the correct pairs'});
  pause(3) 
  close(h)
  animations
  clear sound
else k=msgbox({'Error! You plotted the incorrect pairs!'});
    pause(3)
    close(k)
    p=msgbox({'Try again!'})
    set(handles.thym,'visible','on')
    set(handles.guan,'visible','on')
    set(handles.cyto,'visible','on')
    set(handles.aden,'visible','on')
    global_struct.a=1;
    global_struct.ProPair='';
end
