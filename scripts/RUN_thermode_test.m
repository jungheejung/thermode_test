clear all;
Screen('Close');
clearvars;
sca;
% 1. grab participant number ___________________________________________________
prompt = 'SESSION (16 or 30): ';
session = input(prompt);
prompt = 'PARTICIPANT (in raw number form, e.g. 1, 2,...,98): ';
sub_num = input(prompt);

fMRI = 1;
debug = 0;
biopac = 0;



% B. Directories ______________________________________________________________
main_dir  = pwd;

task1 = 'thermode_test';
task1_cb = 'task-pain_counterbalance';
run_task1 = strcat(task1,'(',num2str(sub_num),",'",char(task1_cb), "',",num2str(session), ',',num2str(biopac),',',num2str(debug),')');
eval(run_task1);
