require './../../cruby/main'
require 'benchmark/ips'

c_ruby = CRuby.new

Benchmark.ips do |x|
  x.report("ruby"){
    10000.times do 
      1 + 1
    end
  }

  x.report("cruby"){
    10000.times do 
      c_ruby.add(1, 1)
    end
  }

  x.compare!
end