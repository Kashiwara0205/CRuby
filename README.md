# CRuby

## bench mark

### add
```
Warming up --------------------------------------
                ruby   936.041k i/100ms
               cruby     1.013M i/100ms
               1 + 1     1.265M i/100ms
Calculating -------------------------------------
                ruby      9.576M (± 4.3%) i/s -     48.674M in   5.093849s
               cruby     10.225M (± 3.3%) i/s -     51.644M in   5.056476s
               1 + 1     12.450M (± 1.7%) i/s -     63.225M in   5.079782s

Comparison:
               1 + 1: 12449913.6 i/s
               cruby: 10225468.3 i/s - 1.22x  (± 0.00) slower
                ruby:  9576153.0 i/s - 1.30x  (± 0.00) slower

```

### sub
```
arming up --------------------------------------
                ruby   935.232k i/100ms
               cruby     1.025M i/100ms
               1 - 1     1.292M i/100ms
Calculating -------------------------------------
                ruby      9.892M (± 5.3%) i/s -     49.567M in   5.029910s
               cruby     10.085M (± 2.2%) i/s -     51.234M in   5.082964s
               1 - 1     12.674M (± 2.7%) i/s -     64.576M in   5.099290s

Comparison:
               1 - 1: 12673652.6 i/s
               cruby: 10084540.3 i/s - 1.26x  (± 0.00) slower
                ruby:  9891704.6 i/s - 1.28x  (± 0.00) slower

```


### mul
```
Warming up --------------------------------------
                ruby   988.973k i/100ms
               cruby     1.023M i/100ms
               1 * 1     1.247M i/100ms
Calculating -------------------------------------
                ruby      9.717M (± 3.9%) i/s -     49.449M in   5.099123s
               cruby     10.046M (± 1.8%) i/s -     51.169M in   5.095366s
               1 * 1     12.336M (± 2.8%) i/s -     62.329M in   5.056915s

Comparison:
               1 * 1: 12336054.6 i/s
               cruby: 10045639.5 i/s - 1.23x  (± 0.00) slower
                ruby:  9716597.0 i/s - 1.27x  (± 0.00) slower


```

### div

```
Warming up --------------------------------------
                ruby   886.609k i/100ms
               cruby   978.010k i/100ms
           1.0 / 1.0     1.184M i/100ms
Calculating -------------------------------------
                ruby      9.037M (± 3.3%) i/s -     45.217M in   5.009239s
               cruby      9.966M (± 1.7%) i/s -     49.879M in   5.006281s
           1.0 / 1.0     11.668M (± 2.2%) i/s -     59.184M in   5.074969s

Comparison:
           1.0 / 1.0: 11667952.9 i/s
               cruby:  9965998.8 i/s - 1.17x  (± 0.00) slower
                ruby:  9037144.5 i/s - 1.29x  (± 0.00) slower

```

### concat 

```
Warming up --------------------------------------
               cruby   544.918k i/100ms
              concat   671.604k i/100ms
                ruby   557.191k i/100ms
Calculating -------------------------------------
               cruby      5.421M (± 7.8%) i/s -     27.246M in   5.061982s
              concat      5.946M (±10.2%) i/s -     29.551M in   5.025222s
                ruby      5.236M (± 6.7%) i/s -     26.188M in   5.023809s

Comparison:
              concat:  5945515.1 i/s
               cruby:  5420647.2 i/s - same-ish: difference falls within error
                ruby:  5236426.2 i/s - same-ish: difference falls within error
```
