
// Assume you have to write a function that does randomize a 8 bit unpacked array[3][3] and return it
// How do we write it in SV? 
// That's where typedef comes and help us
// Define the type you want using typedef, in this case, 8 bit data[3][3] and then use that in function.

program automatic tb;
  typedef bit[7:0] data[3][3];  
  class test_user_defined_type;
      

      function data my_method();
        data my_var;

            
        void'(std::randomize(my_var));

        $display("Randomized my_var : %0p",my_var);
      return my_var;  
      endfunction: my_method
      
    endclass: test_user_defined_type

    initial begin
        test_user_defined_type a;
       data abc;

        a = new();
       abc = a.my_method();
      $display ("abc value : %p",abc);
    end
endprogram

