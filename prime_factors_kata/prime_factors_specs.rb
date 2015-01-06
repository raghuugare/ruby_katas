require 'rspec/given'
require './prime_factors'

RSpec::Given.use_natural_assertions

describe PrimeFactors do

  Given(:pf) { PrimeFactors.new }

  Then {pf != nil}
  

end
