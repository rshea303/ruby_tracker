class JobsController < ApplicationController
  def index
      titles = ["Ruby on Rails Developer", "Junior Developer", "RoR Web Developer", "Senior Rubyisty", "Ruby Programmer", 
                "Ruby on Rails Developer", "Junior Developer", "RoR Web Developer", "Senior Rubyisty", "Ruby Programmer"] 
      pay = %w($100000 $87000 $45000 $67000 $123000 $1000000 $58000 $79000 $97000 $65000)
      remote_chance = %w(yes no yes yes no yes yes yes no no)
      @filler = titles.zip(pay, remote_chance)
  end
end
