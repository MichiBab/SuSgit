function [mono] = toMono(input)
    mono = (input(:,1)+input(:,2))/2;
end

