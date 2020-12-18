import pandas as pd
import os

# vicarious ____________________________________________________________________
# import 3 datasets
main_dir = '/Users/h/Documents/projects_local/thermode_test'
sublist = [1,2,3,4,5,6,7]
thermodesize = [16] #, 30]
for ind,sub in enumerate(sublist):
    for ther in thermodesize:
    # for b_num in list(range(1,3)):
        coord_file = os.path.join(main_dir, 'data', 'sub-' + str(('%04d' % sub)),
        'thermodesize-' + str(ther) + 'mm', 'beh', 'sub-' + str(('%04d' % sub)) +
        '_thermodesize-' + str(ther) + 'mm_task-testing_formattedangle.csv')
        beh_file = os.path.join(main_dir, 'data', 'sub-' + str(('%04d' % sub)),
        'thermodesize-' + str(ther) + 'mm', 'beh', 'sub-' + str(('%04d' % sub)) +
        '_thermodesize-' + str(ther) + 'mm_task-testing_beh.csv')
        # counterbalance_file = main_dir + '/design/task-vicarious_counterbalance_ver-01_block-0' + str(b_num)  + '.csv'

        # read
        coord = pd.read_csv(coord_file)
        beh = pd.read_csv(beh_file)

        # concat
        result = pd.concat([coord, beh ], axis=1, sort=False)


        # save

        savefile_dir = os.path.join(main_dir, 'analysis', 'preprocessed_data', 'sub-'+ str('%04d' % sub))
        if not os.path.exists(savefile_dir):
            os.makedirs(savefile_dir)
        savefilename = os.path.join(savefile_dir ,'sub-' + str(('%04d' % sub)) + '_thermodesize-' + str(ther) + 'mm_metadata.csv')
        result.to_csv(savefilename)
