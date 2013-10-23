class PhoneNumber
  attr_reader :number

  def initialize(value)
    clean_number(value)
  end

  private
  def clean_number(value)
    @number = value.to_s
    remove_non_digits
    pop_one_off_eleven_digits
  end

  private
  def remove_non_digits
    @number.gsub!(/\D/, '')
  end

  private
  def pop_one_off_eleven_digits
    @number[0] = '' if @number.size == 11 && number[0] == '1'
  end
end