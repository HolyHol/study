module Exercise
  module Arrays
    class << self
      def max(list)
        return nil if list.empty?
      
        if list.length == 1
          list[0] # base case
        else
          sub_max = max(list[1..-1])
          list[0] > sub_max ? list[0] : sub_max
        end
      end

      def max(array)
        return nil if array.empty?
        
        if array.length == 1
          array[0] # base case
        else
          sub_max = max(array[1..-1])
          array[0] > sub_max ? array[0] : sub_max
        end
      end
      
      def replaces_positive_array(array, max_array_new)
        
        return [] if array.empty?
        
        sub_array = replaces_positive_array(array[1..-1], max_array_new)
        
        if array[0] < 0
          sub_array.unshift(array[0])
          
        else 
          sub_array.unshift(max_array_new) 
          
        end
      end
      
      def replace(array)
        max_array_new = max(array)
        replaces_positive_array(array, max_array_new)
      end

      def search(_array, _query)
        # Реализовать двоичный поиск
        # Функция должна возвращать индекс элемента
        low = 0
        high = _array.length - 1

        while low <= high
          mid = (low + high) / 2
          guess = _array[mid]
        
          if guess == _query
            return mid 
          
          elsif guess > _query
            high = mid - 1
          
          else 
            low = mid + 1
          end
        end
      return -1
      end
    end
  end
end
