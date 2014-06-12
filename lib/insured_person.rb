require_relative 'person'

# Create a subclass of Person
class InsuredPerson < Person 
  attr_accessor :current_smoker

  def initialize(first_name, last_name, dob_str)
    super

    @current_smoker = false
  end

  def current_smoker?
    @current_smoker
  end

  def give_insurance?
    years_to_live > 20
  end

  # Everthing from here to the end of the class
  # is private. Only accessable within instance 
  # methods
  private

  def years_to_live
   (79-age) +( current_smoker? ? -7 : 0) + ( married? ? 5 : 0)
  end

end
