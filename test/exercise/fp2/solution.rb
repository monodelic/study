module Exercise
  module Fp2
    class MyArray < Array

      # Написать свою функцию my_each
      def my_each
        for element in self
          yield element
        end
        self
      end

      # Написать свою функцию my_map
      def my_map
        result = self.class.new([])
        my_each do |element|
          result << yield(element)
        end
        result
      end

      # Написать свою функцию my_compact
      def my_compact
        my_c = self.class.new
        for i in 0..(length - 1)
          my_c << self[i] unless self[i].nil?
        end
        my_c
      end

      # Написать свою функцию my_reduce
      def my_reduce(accum = nil)
        my_each do |el|
          if accum.nil?
            accum = el
            next
          end
          accum = yield(accum, el)
        end
        accum
      end
    end
  end
end
