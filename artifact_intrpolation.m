function [interp_data] = artifact_intrpolation(data, analysis_channels)

%INPUT
%analysis_channels: channels for analysis 
%data: iEEG matrix (channles x time)
%OUTPUT
% iEEG data without the artifact

x_all_points = 1:size(data,1);
num_anal_ch = length(analysis_channels);
for count = 1:num_anal_ch
        ch_name = analysis_channels(count);
        y_all_points = data(:, ch_name);


    %---- aply interpolation ---
        x_inter = x_all_points(stim_point-10:stim_point+10);
        y_inter = y_all_points(stim_point-10:stim_point+10);

        central_point = ceil(length(x_inter)/2); 
        x_remove_idx = [central_point-1:central_point+5];
        x_remove = x_inter;
        x_remove(x_remove_idx) = [];

        y_remove = y_inter;
        y_remove(x_remove_idx) = [];

        interp_data = interp1(x_remove, y_remove, x_inter, 'spline')
end

