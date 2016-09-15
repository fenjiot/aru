function [new_value] = update_expected_value(expected_value, obtained_value)
  learning_rate = 0.4;

  difference = obtained_value - expected_value;

  new_value = expected_value + (learning_rate * (difference));
end
