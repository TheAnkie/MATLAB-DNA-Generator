global global_struct 
global_struct.kera='ATGCGTTAGCTCTTA';
global_struct.KFpair='';
for v=1:numel(global_struct.kera);
if global_struct.kera(v)=='A'
    global_struct.KFpair(v)='T'
elseif global_struct.kera(v)=='T'
    global_struct.KFpair(v)='A'
elseif global_struct.kera(v)=='C'
    global_struct.KFpair(v)='G'
elseif global_struct.kera(v)=='G'
    global_struct.KFpair(v)='C'
end
end 