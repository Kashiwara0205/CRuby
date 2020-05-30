require 'inline'

class CRuby
  inline do |builder|
    builder.include '<stdio.h>'
    builder.c 'int return_1() {
      return 1;
    }'

    builder.c 'int add(int a, int b) {
      return a + b;
    }'

    builder.c 'int sub(int a, int b) {
      return a - b;
    }'

    builder.c 'int mul(int a, int b) {
      return a * b;
    }'
  end
end  