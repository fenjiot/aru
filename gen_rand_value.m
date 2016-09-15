function [new_value, decided] = gen_rand_value(a, b, std_dev)
  choice = randi(2);

  if choice == 1
    new_value = gen_obtained_value(a, std_dev);
    decided = 'a';
  else
    new_value = gen_obtained_value(b, std_dev);
    decided = 'b';
  end
end
