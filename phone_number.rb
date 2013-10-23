class PhoneNumber
  attr_reader :number

  def initialize(value)
    clean_number(value)
  end

  private
  def clean_number(value)
    @number = value.gsub(/\D/, '')
  end
end