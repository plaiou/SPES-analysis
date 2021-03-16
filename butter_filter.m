function [filtered_EEG] = butter_filter(EEG, sampling_freq, lower_limit,upper_limit)

%INPUT
% EEG: iEEG data (ch x time)
% sampling_freq: sampling frequency
% lower_limit: lower frequency limit
% upper_limit: upper frequency limit


EEG=double(EEG);
Nth_order=4;

Wn=[lower_limit,upper_limit]/(sampling_freq/2);

[t1, t2] = butter(Nth_order,Wn);

if size(EEG,1)>size(EEG,2)
    filtered_EEG = filtfilt(t2,t1,EEG);
else
    EEG=EEG';
    EEG = filtfilt(t2,t1,EEG);
    filtered_EEG=EEG';
end
end

