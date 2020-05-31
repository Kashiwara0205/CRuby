require './../../cruby/main'
require 'benchmark/ips'

c_ruby = CRuby.new

Benchmark.ips do |x|
  x.report("ruby"){
    1 + 1
  }

  x.report("cruby"){
    c_ruby.add(1, 1)
  }

  x.compare!
end