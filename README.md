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