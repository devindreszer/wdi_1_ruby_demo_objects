require 'date'

class Person
  # generates a getter for instance variable @instance_variable
  attr_reader :first_name, :dob

  # generates a getter and setter
  attr_accessor :last_name, :current_smoker, :married

  # dob_str must be in thisform 'm-d-Y'
  # initalize method
  def initialize(first, last, dob_str)
    @first_name = first
    @last_name = last
    @dob = Date.strptime(dob_str, '%m-%d-%Y')
    @current_smoker = false
    @married = false
    @years_to_live = (79 - age) - (current_smoker? ? -7 : 0)  + (married? ? 5 : 0)
  end

  def age
    now = Date.today
    now.year - @dob.year
  end

  def expected_death_year
    Date.today.year + @years_to_live
  end

  def current_smoker?
    @current_smoker
  end

  def married?
    @married
  end

  def give_insurance?
    @years_to_live > 20
  end

  def full_name
    @first_name + " " + @last_name
  end

end
