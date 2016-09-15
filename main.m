function [] = main();
  A = 5;
  B = 5;

  expected_obtained_a = [];
  expected_obtained_b = [];

  for % whatever means 10 times
    [obtained_a, obtained_b, decided] = softmax(A,B);

    if strcmpi(decided, 'a');
      A = update_expected_value(A, obtained_a);
    else
      B = update_expected_value(B, obtained_b);
    end

    % TODO: somehow store in expected_obtained_a and expected_obtained_b
  end

  % disp('End value of A: ');
  % disp(A);
  %
  % disp('End value of B: ');
  % disp(B);
  disp('DONE');
end
