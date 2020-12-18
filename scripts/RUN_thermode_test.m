clear all;
Screen('Close');
clearvars;
sca;
% 1. grab participant number ___________________________________________________
prompt = 'SESSION (16 or 30): ';
session = input(prompt);
prompt = 'PARTICIPANT (in raw number form, e.g. 1, 2,...,98): ';
sub_num = input(prompt);
prompt = 'RUN (1 or 2) : ';
run_num = input(prompt);

fMRI = 1;
debug = 0;
biopac = 0;


a = [3,10]
random_sequence = [1, 2, 2, 1, 2, 1, 1]
% plateau = a(run);

if random_sequence(sub_num) == 1
  run1= 3; run2 = 10;
else
  run1= 10; run2 = 3;
end

% B. Directories ______________________________________________________________
main_dir  = pwd;

task1 = 'thermode_test';
task1_cb = 'task-pain_counterbalance';
run_task1 = strcat(task1,'(',num2str(sub_num),',',num2str(session),',',num2str(run1),',',num2str(biopac),',',num2str(debug),')');
run_task2 = strcat(task1,'(',num2str(sub_num),',',num2str(session),',',num2str(run2),',',num2str(biopac),',',num2str(debug),')');
eval(run_task1);eval(run_task2);
