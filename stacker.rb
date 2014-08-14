module Stacker
  class Interpreter

    @@stack = nil

    def stack=(result)
      @@stack = result
    end

    def stack
      @@stack
    end

  end
end


def execute(array)
  operators = { 'ADD' => '+', 'SUBTRACT' => '-', 'MULTIPLY' => '*', 'DIVIDE' => '/', 'MOD' => '%', '>' => '>', '<' => '<', '='=> '==' }
  result = []
  split_array = array.each_slice(3).to_a

  split_array.each do |subarray|
    subresult = subarray[0].to_i.send(operators[subarray.last], subarray[1].to_i)
    result << subresult
  end

  @stack_instance = Stacker::Interpreter.new
  @stack_instance.stack = result
end



