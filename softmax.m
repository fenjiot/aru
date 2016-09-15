  function [obtained_a, obtained_b, decided] = softmax(a,b);
    temperature = 0.3;
    std_dev = 1;

    exp_sum = (exp(a*temperature) + exp(b*temperature));

    prob_a = exp(a*temperature)/exp_sum;
    prob_b = exp(b*temperature)/exp_sum;

    obtained_a = a;
    obtained_b = b;

    if prob_a > prob_b;
      obtained_a = gen_obtained_value(a, std_dev);
      decided = 'a';
    elseif prob_a < prob_b
      obtained_b = gen_obtained_value(b, std_dev);
      decided = 'b';
    else
      [value, decided] = gen_rand_value(a,b, std_dev);

      if strcmpi(decided, 'a');
        obtain_a = value;
      else
        choice_b = value;
      end
    end
  end
