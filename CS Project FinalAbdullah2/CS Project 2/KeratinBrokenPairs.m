global global_struct 
global_struct.kera='ATGCGTTAGCTCTTA';
global_struct.Kpair='';
for v=1:numel(global_struct.kera);
if global_struct.kera(v)=='A'
    global_struct.Kpair(v)='C'
elseif global_struct.kera(v)=='T'
    global_struct.Kpair(v)='G'
elseif global_struct.kera(v)=='C'
    global_struct.Kpair(v)='A'
elseif global_struct.kera(v)=='G'
    global_struct.Kpair(v)='T'
end
end 
