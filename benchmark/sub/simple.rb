require './../../cruby/main'
require './../../ruby/main'
require 'benchmark/ips'

c_ruby = CRuby.new
ruby = Ruby.new
Benchmark.ips do |x|
  x.report("ruby"){
    ruby.sub(1, 1)
  }

  x.report("cruby"){
    c_ruby.sub(1, 1)
  }

  x.report("1 - 1"){
    1 - 1
  }
  
  x.compare!
end