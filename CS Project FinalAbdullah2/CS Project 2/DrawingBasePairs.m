global global_struct 
global_struct.somePro
global_struct.drawBases='';
for v=1:numel(global_struct.somePro);
if global_struct.somePro(v)=='A'
    global_struct.drawBases(v)='T'
elseif global_struct.somePro(v)=='T'
    global_struct.drawBases(v)='A'
elseif global_struct.somePro(v)=='C'
    global_struct.drawBases(v)='G'
elseif global_struct.somePro(v)=='G'
    global_struct.drawBases(v)='C'
end
end 


