function [energy, conjestion, connectivity] = results(G, n ,ext, energyo ,conjestiono , connectivityo)

    energy = sum((G.Edges.Weight.^2)) / height(G.Edges) + energyo;
    conjestion = sum(degree(G)) / (n - ext)  + conjestiono;
    [~, r] =  conncomp(G);
    m = (r(1) == n - ext);
    connectivity = double(m) + connectivityo;
    
end