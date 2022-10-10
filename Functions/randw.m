function [id]=randw(w,N) % selects a category randomly based on weights for many inputs
            if nargin==1; N=1; end
            w=w(:);  w=w./sum(w);
            [id,~] = discretize(rand(N,1),[0; cumsum(w)]);
end