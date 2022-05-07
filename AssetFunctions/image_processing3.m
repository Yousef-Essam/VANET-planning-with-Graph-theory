
clear img
clear img2
clear img3

img = imread('map4.jpg');
[a, b, c] = size(img);
%img2 = zeros(a, b);

figure(1)
hold on
image(img)


for i = 1:a
    for j = 1:b
        if (sum(img(i,j,:)) > 3*252)
             % White pixel - do what you want to original image
             img(i,j,:) = [255 255 255]; % make it black, for example
        else
            img(i,j,:) = [0 0 0];
        end
    end
end

 %img2 = img;
% img2 = bwmorph(img, 'fill');
se = strel('disk',5);
img2 = imclose(img, se);
se = strel('disk',0);
img2 = imopen(img2,se);

figure(2)
hold on
image(img2)
    skel = bwmorph(img2(:, :, 1),...        % gets the skelaton from the weight roads 
        'skel', Inf);        
    
figure(3)
img3(:, :, 1)= skel;
img3(:, :, 3)= skel;
img3(:, :, 2)= skel;
image(img3)
                                         %Map (image) to Graph toolbox
[~,node,link] = Skel2Graph3D(skel,5);    %convverts the skelaton to graph
                                             %skel2graph 3d toolbox
                                             %the factor to the right in
                                             %both of them doesn't make
                                             %difference


x = extractfield(node, 'comx')';
y = extractfield(node, 'comy')';
sn = extractfield(link, 'n1')';
en = extractfield(link, 'n2')';

endNodes = table([sn en],'Variablenames', {'EndNodes'});
Nodes = table(zeros(size(x, 1), 0));
G = graph(endNodes, Nodes);
height(G.Nodes)
%     for i = 1:height(G.Nodes)
%         if(degree(G, i) == 0)
%             G = rmnode(G, i);
%         end
%     end
figure(1)
plot(G, 'xdata', y, 'ydata', x)