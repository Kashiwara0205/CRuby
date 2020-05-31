require './../../cruby/main'
require './../../ruby/main'
require 'benchmark/ips'

c_ruby = CRuby.new
ruby = Ruby.new


Benchmark.ips do |x|
  x.report("ruby"){
    ruby.div(1.0, 1.0)
  }

  x.report("cruby"){
    c_ruby.divided(1.0, 1.0)
  }

  x.compare!
end