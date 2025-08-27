class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    # raise 'Please implement the SimpleCalculator.calculate method'
    unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
      raise ArgumentError.new("Operands must be numbers.")
    end
    unless ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation.new("This is an unsupported operation.")
    end

    begin
      case operation
      when '+'
        "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
      when '*'
        "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
      when '/'
        "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      end
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end
end
