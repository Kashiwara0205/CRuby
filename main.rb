require 'inline'

class CRuby
  inline do |builder|
    builder.include '<stdio.h>'
    builder.c 'int return_1() {
      return 1;
    }'
  end
end

puts CRuby.new.return_1()