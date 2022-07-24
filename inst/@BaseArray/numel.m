% Number of elements.
% n = numel(A)

function n = numel(self, varargin)

n = prod(self.sz);
