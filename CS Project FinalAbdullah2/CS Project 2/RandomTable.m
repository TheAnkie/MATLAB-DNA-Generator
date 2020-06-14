global global_struct
global_struct.h=randi([1 4],[1 9]);
global_struct.somePro='';
for i=1:9;
if global_struct.h(i)==1
    global_struct.somePro(i)='A'
elseif global_struct.h(i)==2
    global_struct.somePro(i)='T'
elseif global_struct.h(i)==3
    global_struct.somePro(i)='G'
elseif global_struct.h(i)==4
    global_struct.somePro(i)='C'
end
end
    