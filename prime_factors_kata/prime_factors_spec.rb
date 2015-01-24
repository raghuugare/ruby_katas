require 'rspec-given'
require './prime_factors'

RSpec::Given.use_natural_assertions

describe PrimeFactors do

  context "Specs..." do

    Given(:pf) {PrimeFactors.new}

    context "Sanity/Null check" do
      Then { expect(pf) != nil }
    end

    context "When given numbers too small" do
      Then { expect(pf.factorize(1)).to match_array [] }
    end

    context "When given composite numbers with only 1 kind of prime factor" do
      Then { expect(pf.factorize(2)).to match_array [2] }
      Then { expect(pf.factorize(4)).to match_array [2, 2] }
    end

    context "When given composite numbers with many different prime factors" do
      Then { expect(pf.factorize(7)).to match_array [2, 3] }
      Then { expect(pf.factorize(30)).to match_array [2, 3, 5] }
      Then { expect(pf.factorize(300)).to match_array [2, 2, 3, 5, 5] }
    end

  end # end of the outer-most context...
  
end # end of the spec

