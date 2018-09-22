function y = cruise_control(input)
y = (input (2) - 0.3 * input(1)*input(1) - input(3)); 
end