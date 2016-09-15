function [new_value] = gen_obtained_value(expected_value, std_dev);
  new_value = normrnd(expected_value, std_deviation);
end
