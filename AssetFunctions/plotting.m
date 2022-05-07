function [] = plotting(x, y, z, map, Top, save)
    
    map = int2str(map);
    Top = int2str(Top);

    figure(2)
    plot (x);
    xlabel('Frames (n)')
    ylabel('Average R^2 (m^2)')
    title('Average R^2 vs Frames');
    if save == 1
        saveas(gcf,['R^2 map' map ' top' Top '.png'])
    end

    figure(3)
    plot (y);
    xlabel('Frames (n)')
    ylabel('Connectivity probability')
    title('connectivity probability vs Frames');
    if save == 1
        saveas(gcf,['conn map' map ' top' Top '.png'])
    end
    
    figure(4)
    plot (z);
    xlabel('Frames (n)')
    ylabel('Average connection/node')
    title('Congestion vs Frames');
    if save == 1
      saveas(gcf,['cong map' map ' top' Top '.png'])
    end

end