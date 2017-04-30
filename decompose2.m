function [c,s] = decompose2(x,n,IN3,IN4)

if nargin==3
    [Lo_D,Hi_D] = wfilters(IN3,'d');
else
    Lo_D = IN3;   Hi_D = IN4;
end

% Initialization.
c = [];
sx =  size(x);
s = zeros(n+2,length(sx));
if isempty(x) , return; end

s(end,:) = size(x);
for i=1:n
    [x,h,v,d] = dwt2(x,Lo_D,Hi_D); % decomposition
    c = [h(:)' v(:)' d(:)' c];     % store details
    s(n+2-i,:) = size(x);          % store size
end

% Last approximation.
c = [x(:)' c];
s(1,:) = size(x);