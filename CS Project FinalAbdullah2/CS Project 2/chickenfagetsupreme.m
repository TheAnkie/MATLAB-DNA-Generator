function out=chickenfagetsupreme(rectangles,enzyme)
[x,y]=ginput(1);
x=floor(x);
y=floor(y);
t=0;
for i=1:numel(rectangles)
    pos=get(rectangles(i),'Position');
    xcor=pos(1);
    ycor=pos(2);
    xcor1=xcor+10;
    ycor1=ycor+10;
    if x > xcor && x < xcor1 && y > ycor && y < ycor1
        for l=0.1:0.1:1
            set(enzyme,'Position',[xcor*l ycor*l 15 15]);
            pause(0.1)
        end
        t=i;
    end    
end
out=t;
end