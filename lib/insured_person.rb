require_relative 'person.rb'

class InsuredPerson < Person
  attr_accessor :current_smoker

  def initialize(first, last, dob_str)
    super
    @current_smoker = false
  end

  def expected_death_year
    Date.today.year + years_to_live
  end

  def current_smoker?
    @current_smoker
  end

  def give_insurance?
    years_to_live > 20
  end

  private

  def years_to_live
    (79 - age) - (current_smoker? ? -7 : 0)  + (married? ? 5 : 0)
  end

end
