clc
clear
figure
% [Violin, Fs]=audioread('CrashBash.mp3');
% sound(Violin, Fs)
axis([0 120 0 120]);
hold on 
axis on
img=imread('NewDNABg.jpg');
img1=imrotate(img,180);
image([0 120],[0 120],img1);
for i=10:10:90
h1=rectangle('Position',[i 10 10 10],'facecolor',[rand rand rand]);
end

i=0;
d=0;
l=0;
while 1
    i=i+1;
    xpos=randi(100);
    ypos=randi([40,100]);
    if i~=1
        l=0;
        for j=1:numel(h)
            anus=get(h(j),'Position');
            xcor=anus(1);
            ycor=anus(2);
            xcor1=xcor+10;
            ycor1=ycor+10;
            if xpos > xcor && xpos < xcor1 && ypos > ycor && ypos < ycor1
                l=l+1;
            end
            
        end
        if l == 0
            h(d+1)=rectangle('Position',[xpos ypos 10 10],'facecolor',[rand rand rand]);
            d=d+1;
        end
    end
    if i==1
        h(i)=rectangle('Position',[xpos ypos 10 10],'facecolor',[rand rand rand]);
        d=d+1;
    end
    if d==9
        break
    end
end
enzyme=rectangle('Position',[0 20 15 15], 'Facecolor','y', 'Curvature',[1 1]);
n=1;
while 1
    t=chickenfagetsupreme(h,enzyme);
    if t ~= 0
    set(h(t),'Position',[10*n 25 10 10]);
    n=n+1;
    end
    if n == 10
        BONDS
        break
    end
end
clear sound
pause(4)
clear sound
close
