 class RomanNumeralConverter

   ROMAN_GLYPHS = [
     [1000, "M"],
     [500, "D"],
     [100, "C"],
     [50, "L"],
     [40, "XL"],
     [10, "X"],
     [9, "IX"],
     [5, "V"],
     [4, "IV"],
     [1, "I"]
   ]

   def convert(n)
      result = ""
      ROMAN_GLYPHS.each do |limit, glyph|
        while n >= limit
          result << glyph
          n -= limit
        end
      end
      result
    end

  end
