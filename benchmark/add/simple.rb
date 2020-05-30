require './../../cruby/main'

c_ruby = CRuby.new

start_time = Time.now
10000.times do 
  1 + 1
end
puts Time.now - start_time

start_time = Time.now
10000.times do 
  c_ruby.add(1, 1)
end
puts Time.now - start_time