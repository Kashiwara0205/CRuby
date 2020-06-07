require './../../cruby/main'
require './../../ruby/main'
require 'benchmark/ips'

c_ruby = CRuby.new
ruby = Ruby.new

a1 = [{member_id: 1, name: "xxxx", memo: "xxxxx", hoge: "xx", fuga: "xx", hege: "xx"}] * 5
b1 = [{member_id: 2, name: "!!!!!", memo: "!!!!!", hoge: "xx", fuga: "xx", hege: "xx"}] * 5

a2 = [{member_id: 1, name: "xxxx", memo: "xxxxx", hoge: "xx", fuga: "xx", hege: "xx"}] * 5
b2 = [{member_id: 2, name: "!!!!!", memo: "!!!!!", hoge: "xx", fuga: "xx", hege: "xx"}] * 5

a3 = [{member_id: 1, name: "xxxx", memo: "xxxxx", hoge: "xx", fuga: "xx", hege: "xx"}] * 5
b3 = [{member_id: 2, name: "!!!!!", memo: "!!!!!", hoge: "xx", fuga: "xx", hege: "xx"}] * 5

Benchmark.ips do |x|
  x.report("cruby"){
    c_ruby.concat(a1, b1)
  }

  x.report("concat"){
    a2.concat(b2)
  }

  x.report("ruby"){
    ruby.concat(a3, b3)
  }

  x.compare!
end