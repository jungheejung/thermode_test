# thermode_test
Testing thermode
* 1) safety test
* 2) thermode head size
* 3) program configuration
    * 45,46,47,48,49,50 celcius
    * two plateaus: 3s, 10s

Testing notes
* sub-0002, one trial didn't trigger (8bit code 37, temperature 49)
* sub-0002, one trial was hanging with a self test button (once clicked, the program bleeded into the rating phase)

Double checking if thermode programs were triggered
* [x] all triggered for sub-0001, however, first trial was 37, when the design.csv indicated 37
* [x] one trial not triggered for sub-0002
* [x] all triggered for sub-0003
* [x] all triggered for sub-0004
