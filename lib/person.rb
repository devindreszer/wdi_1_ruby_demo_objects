require 'date'

class Person
  # generates a getter for instance variable @instance_variable
  attr_reader :first_name, :dob

  # generates a getter and setter
  attr_accessor :last_name, :married

  # dob_str must be in thisform 'm-d-Y'
  # initalize method
  def initialize(first, last, dob_str)
    @first_name = first
    @last_name = last
    @dob = Date.strptime(dob_str, '%m-%d-%Y')
    @married = false
  end

  def age
    now = Date.today
    now.year - @dob.year
  end

  def full_name
    @first_name + " " + @last_name
  end

  def married?
    @married
  end

end
