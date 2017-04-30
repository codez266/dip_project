function x = waverec2(c,s,varargin)

msg = nargchk(3,4,nargin);
if ~isempty(msg)
    error('Wavelet:FunctionInput:NbArg',msg)
end

x = appcoef2(c,s,varargin{:},0);