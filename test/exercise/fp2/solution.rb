module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

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
        myc = self.class.new
        for i in 0..(length - 1)
          myc << self[i] unless self[i].nil?
        end
        myc
      end

      # Написать свою функцию my_reduce
      def my_reduce
      end
    end
  end
end
