module Exercise
  module Fp
    class << self
      def rating(array)
        country = array.select { |film| film['country'].to_s.split(',').length >= 2 }
        rating = country.select { |film| film['rating_kinopoisk'].to_f >= 2 }
        (rating.map { |film| film['rating_kinopoisk'].to_f }).reduce(:+) / rating.length
      end

      def chars_count(array, rating)
        films = array.select { |film| film['rating_kinopoisk'].to_f >= rating }
        (films.map { |film| film['name'].count('и') }).reduce(:+)
      end
    end
  end
end
