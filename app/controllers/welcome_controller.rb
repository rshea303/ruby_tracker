class WelcomeController < ApplicationController
  def index
    cities = %w(Denver Chicago Austin Orlando Philadelphia Boston Houston Dallas Oakland Tampa)
    emps = [25, 20, 18, 17, 15, 15, 7, 6, 5, 1]
    salary = %w($125000 $115000 $100000 $97000 $95000 $90000 $87000 $78000 $76000 $65000)
    remotes = %w(Quickleft Thoughtbot Aetna Bonobos IBM Google DISH Tek Cyber Disney)
    @jobs = cities.zip(emps, salary, remotes)
  end
end
