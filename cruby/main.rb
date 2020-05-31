require 'inline'

class CRuby
  inline do |builder|
    builder.include '<stdio.h>'
    builder.c 'int add(int a, int b) {
      return a + b;
    }'

    builder.c 'int sub(int a, int b) {
      return a - b;
    }'

    builder.c 'int mul(int a, int b) {
      return a * b;
    }'

    # to avoid previous declaration div
    builder.c 'double divided(double a, double b) {
      return a / b;
    }'
  end
end  