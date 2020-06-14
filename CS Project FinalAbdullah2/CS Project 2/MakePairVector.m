global global_struct 
global_struct.haem='AATGACTGCTAGTCA';
global_struct.pair='';
for u=1:numel(global_struct.haem);
if global_struct.haem(u)=='A'
    global_struct.pair(u)='T'
elseif global_struct.haem(u)=='C'
    global_struct.pair(u)='G'
elseif global_struct.haem(u)=='T'
    global_struct.pair(u)='A'
elseif global_struct.haem(u)=='G'
    global_struct.pair(u)='C'
end
end 


