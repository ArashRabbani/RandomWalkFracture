function [A]=normal(A)   % normalize a function between 0 and 1
A=A-min(A(:)); A=A./max(A(:));
end