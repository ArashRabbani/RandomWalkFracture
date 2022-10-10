function [A]=flatout(A)
% This function flat 2% outlier data and scale the values of the
% function to the whole common range between 0 and 1
low=px.quantile(A,.01);
high=px.quantile(A,.99);
A(A<low)=low;
A(A>high)=high;
end