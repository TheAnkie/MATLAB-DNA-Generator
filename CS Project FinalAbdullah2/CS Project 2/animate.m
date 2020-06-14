%plottig images in a figure
figure
axis([0 1000 0 1000])
hold on
axis on 
redsq=imread('redsquare.jpg');
imshow(redsq)
image([100 200],[100 200],redsq);
