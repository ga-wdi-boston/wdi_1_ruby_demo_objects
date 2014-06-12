require 'date'

# That a Ruby class
class Person
  # Generate a getter for the instance variable @first_name
  attr_reader :first_name, :dob

  # Generate a getter and setter 
  # for the instance variable @last_name
  attr_accessor :last_name, :current_smoker, :married

  # dob_str must be in this format 'm-d-Y'
  # "06-02-1957"
  def initialize(fname, lname, dob_str)
    # instance variables have instance/object scope
    @first_name = fname
    @last_name = lname
    @dob = Date.strptime(dob_str, '%m-%d-%Y')
    @years_to_live = 79 - age
    @current_smoker = false
    @married = false
  end


  # boolean accessor, so I can use the ? idiom
  def current_smoker?
    @current_smoker
  end

  def married?
    @married
  end

  def give_insurance?
    ytl = @years_to_live 
    if current_smoker?
      ytl -= 7
    end
    if married?
      ytl += 5
    end
    ytl > 20
  end

  # instance method for age
  def age
    now = Date.today
    now.year - @dob.year
  end

  def full_name
    @first_name + " " + @last_name
  end
end




