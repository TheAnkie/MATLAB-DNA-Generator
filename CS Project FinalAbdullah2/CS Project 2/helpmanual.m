hold on
axis equal 
axis([0 100 0 100]);
adenine_shape=rectangle('position',[130 105 10 10],'facecolor','r');
thymine_shape=rectangle('position',[130 120 10 10],'facecolor','b','curvature',[1 1]);
cytosine_shape=fill([130 130 132.5 140 140],[135 140 145 140 135],'g');
guanine_shape=rectangle('position',[130 150 20 20],'curvature',[0.75 0.5],'facecolor','c');