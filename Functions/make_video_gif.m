function make_video_gif
filename='Final.gif';
D=dir(['Gif/*.png']);
for I = 2:numel(D)
    A=imread([D(I).folder '/' D(I).name]); 
    
A=uint8(A);
    [imind,cm] = rgb2ind(A,256);
    if I == 2;
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf,'DelayTime',0.1);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',0.1);
    end
end
end