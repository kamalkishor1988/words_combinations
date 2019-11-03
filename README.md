# words_combinations

## To run program, please follow below mentioned steps

### Install

```
gem install bundler
bundle
```
### To execute the program

- `rspec spec/words_combinations_test.rb`
- `ruby app/benchmark.rb`

### Output

```
kamal.kishor@kamal words_combinations (master) $ ruby app/benchmark.rb
Please enter the 10 digits mobile number :
2282668687
Please enter minimum word length :
3
[["ACT,AMOUNTS", "ACT,CONTOUR", "BAT,AMOUNTS", "BAT,CONTOUR", "CAT,AMOUNTS", "CAT,CONTOUR"], ["ACTA,MOUNTS"], ["ACT,BOO,TOTS", "ACT,BOO,TOUR", "ACT,CON,TOTS", "ACT,CON,TOUR", "ACT,COO,TOTS", "ACT,COO,TOUR", "BAT,BOO,TOTS", "BAT,BOO,TOUR", "BAT,CON,TOTS", "BAT,CON,TOUR", "BAT,COO,TOTS", "BAT,COO,TOUR", "CAT,BOO,TOTS", "CAT,BOO,TOUR", "CAT,CON,TOTS", "CAT,CON,TOUR", "CAT,COO,TOTS", "CAT,COO,TOUR"], ["ACT,BOOT,MUS", "ACT,BOOT,NUS", "ACT,BOOT,OUR", "ACT,COOT,MUS", "ACT,COOT,NUS", "ACT,COOT,OUR", "BAT,BOOT,MUS", "BAT,BOOT,NUS", "BAT,BOOT,OUR", "BAT,COOT,MUS", "BAT,COOT,NUS", "BAT,COOT,OUR", "CAT,BOOT,MUS", "CAT,BOOT,NUS", "CAT,BOOT,OUR", "CAT,COOT,MUS", "CAT,COOT,NUS", "CAT,COOT,OUR"], ["ACTA,MOT,MUS", "ACTA,MOT,NUS", "ACTA,MOT,OUR", "ACTA,NOT,MUS", "ACTA,NOT,NUS", "ACTA,NOT,OUR", "ACTA,OOT,MUS", "ACTA,OOT,NUS", "ACTA,OOT,OUR"], "CATAMOUNTS"]
  2.430000   0.070000   2.500000 (  2.497439)
```
```
kamal.kishor@kamal words_combinations (master) $ ruby app/benchmark.rb
Please enter the 10 digits mobile number :
2282668687
Please enter minimum word length :
4
[["ACTA,MOUNTS"], "CATAMOUNTS"]
  0.990000   0.040000   1.030000 (  1.039122)
```
```
kamal.kishor@kamal words_combinations (master) $ ruby app/benchmark.rb
Please enter the 10 digits mobile number :
2282668687
Please enter minimum word length :
5
["CATAMOUNTS"]
  0.540000   0.030000   0.570000 (  0.578554)
```