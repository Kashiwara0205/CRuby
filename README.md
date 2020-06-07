# CRuby

## bench mark

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
