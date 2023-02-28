

str = "Hello world!";
%str = input("Enter a string: ", "s");
%lower = double(input("Enter lower bound: "));
%upper = double(input("Enter upper bound: "));

lower = 1;
upper = 5;

fprintf("%s [%d %d]\n", str, lower, upper);

str{1}(lower:upper) = str{1}(upper:-1:lower)

fprintf("%s [%d %d]\n", str, lower, upper);

