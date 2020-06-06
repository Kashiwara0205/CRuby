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

    builder.c 'VALUE return_ruby_array() {
      VALUE ary;
      int idx;
      int n[5] = { 1, 2, 3, 4, 5 };
      ary = rb_ary_new();
      for (idx=0; idx<5; idx++){
        rb_ary_store(ary, idx, INT2FIX(n[idx]));
      }

      return ary;
    }'

    builder.c "
    VALUE concat_int(VALUE a, VALUE b) {
      VALUE *a_arr = RARRAY_PTR(a);
      int a_len = RARRAY_LEN(a);

      VALUE *b_arr = RARRAY_PTR(b);
      int b_len = RARRAY_LEN(b);

      VALUE total;
      total = rb_ary_new();

      int i;
      for(i = 0; i < a_len; i++) {
        rb_ary_store(total, i, a_arr[i]);
      }

      for(i = 0; i < b_len; i++) {
        rb_ary_store(total, i + a_len, b_arr[i]);
      }

      return total;
    }"

    builder.c "
    VALUE sum_int(VALUE a) {
      VALUE *a_arr = RARRAY_PTR(a);
      int a_len = RARRAY_LEN(a);

      int i = 0;
      int result = 0;
      for(i = 0; i < a_len; i++) {
        result += NUM2INT(a_arr[i]); 
      }

      return rb_int_new(result);
    }"

  end
end  