
% """
% This code
% """
% __author__ = "Heejung Jung"
% __version__ = "1.0.1"
% __email__ = "heejung.jung@colorado.edu"
% __status__ = "Production"

% iteratively go through dataset and pull out last row
% filename example: sub-0001_thermodesize-16mm_task-testing_trajectory.mat
% variable name is "rating_trajectory"
% /Users/h/Documents/projects_local/thermode_test/data/sub-0001/thermodesize-16mm/beh/sub-0001_thermodesize-16mm_task-testing_trajectory
sub = [1,2,3,4,5,6,7];%,96,97,99];
data_dir = '/Users/h/Documents/projects_local/thermode_test/data';
taskname = {'thermodesize-16mm'};%, 'thermodesize-30mm'};
for i = 1:length(sub)
for task = 1:length(taskname)
behavioral_dir = fullfile(data_dir, ['sub-', sprintf('%04d', sub(i))],taskname{task}, 'beh');
filename = fullfile(behavioral_dir, ['sub-',sprintf('%04d', sub(i)),'_', taskname{task}, '_task-testing_trajectory.mat']);
load(filename);
new_trajectory = zeros(size(rating_trajectory,1),2);
% insert it into a csv file per participant?
for trl = 1:size(rating_trajectory,1)
% new_trajectory(trl,1:2) =  rating_trajectory{trl,1}(end,:); % expect
new_trajectory(trl,1:2) =  rating_trajectory{trl,2}(end,:); % actual
end
T = table(new_trajectory);
T2 = splitvars(T);
T2.Properties.VariableNames = { 'actual_ptb_coord_x',  'actual_ptb_coord_y'};
saveFileName = fullfile(behavioral_dir,['sub-',sprintf('%04d', sub(i)), '_',taskname{task},'_task-testing_formattedangle.csv' ]);
writetable(T2,saveFileName)

end
end
