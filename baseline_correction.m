function [cor_basel_bef, cor_basel_far] = baseline_correction(rec_signal, baseline_far)
%This function returned the baseline corrected post-stimulation segment
%
%INPUT
% - rec_signal: the reconstructed signal
% - post_duration: the post-stimulation duration (in number of samples) to
%                consider for the computation of the post-stimulation
%                baseline corrected segment
% - basel_far : the baseline (average of the signal segment) very far from
%             the seizure (optional)

%OUTPUT
%- cor_basel_bef: the post-stimulation baseline corrected segment when
%                normalising with the baseline before the signal
%- cor_basel_far: the post-stimulation baseline corrected segment when
%                normalising with the baseline basel_far (i.e. far from
%                seizure)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

baseline_bef = rec_signal(1:128); % 128 points correspond to 200ms (keller eta l) 


cor_basel_bef = (rec_signal - mean(baseline_bef))/std(baseline_bef);

cor_basel_far = (rec_signal - mean(baseline_far))./std(baseline_far);


end

