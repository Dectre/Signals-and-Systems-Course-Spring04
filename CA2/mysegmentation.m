function [labeledPic, n] = mysegmentation(pic)
    parts = detectParts(pic, 1);
    labeledPic = zeros(size(pic));
    n = numel(parts);    
    for i = 1:n
        part = parts{i};
        indices = sub2ind(size(labeledPic), part(:,1), part(:,2));
        labeledPic(indices) = i;
    end
end

function parts = detectParts(pic, threshold)
    [height, width] = size(pic);
    parts = {};
    toCheck = [];
    pairs = [];
    while true
        if isempty(toCheck)
            if size(pairs, 1) >= threshold
                parts{end + 1} = pairs;
            end
            pairs = [];
            [i, j] = findOne(pic);
            if i == -1
                break;
            end
            toCheck = [i, j];
            pic(i, j) = 0;
        else
            [row, col] = deal(toCheck(1, 1), toCheck(1, 2));
            pairs = [pairs; toCheck(1, :)];
            toCheck(1, :) = [];
            
            neighbors = [
                -1  0  
                 1  0  
                 0 -1
                 0  1 
                -1 -1
                -1  1
                 1 -1 
                 1  1
            ];
            
            for k = 1:size(neighbors, 1)
                r = row + neighbors(k, 1);
                c = col + neighbors(k, 2);
                if r >= 1 && r <= height && c >= 1 && c <= width && pic(r, c) == 1
                    pic(r, c) = 0;
                    toCheck = [toCheck; r, c];
                end
            end
        end
    end
    
    if size(pairs, 1) > threshold
        parts{end + 1} = pairs;
    end  
end

function [i, j] = findOne(matrice)
    [rows, cols] = find(matrice, 1);
    if isempty(rows)
        i = -1; j = -1;
    else
        i = rows; j = cols;
    end
end