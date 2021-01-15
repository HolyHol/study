module Exercise
  module Arrays
    class << self
      def max(array)
        max_element = array[0]
        array.each do |current_element|
          max_element = current_element if max_element < current_element
        end
        max_element
      end

      def replace(array)
        array.map do |current_element|
          current_element.positive? ? max(array) : current_element
        end
      end

      def search(_array, _query)
        # Реализовать двоичный поиск
        # Функция должна возвращать индекс элемента
        low = 0
        high = _array.length - 1
        while low <= high
          mid = (low + high) / 2
          guess = _array[mid]

          return mid if guess == _query

          if guess > _query
            high = mid - 1

          elsif (low = mid + 1)
          end
        end
        -1
      end
    end
  end
end
