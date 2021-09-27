function [rms, max_abs_amplitude, var_segment] = amplitude_features(segment)

%OUTPUT
%- rms: root mean square
%- max_abs_amplitude: maximal absolute amplitude
%- var_segment: variance of segment
%- first_local_max: first local maxima??

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rms = sqrt(mean(segment.^2));

max_abs_amplitude = max(abs(segment));

var_segment = var(segment);


end

