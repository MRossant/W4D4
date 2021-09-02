class Array
   
    def my_uniq
        raise "array is empty" if self.empty?
        result = []
        self.each {|el| result << el if !result.include?(el)}
        result
    end
    
    def two_sum
        raise "array is empty" if self.empty?
        result = []
        (0...self.length).each do |i|
            (i + 1...self.length).each do |j|
                result << [i, j] if self[i] + self[j] == 0
            end
        end
        result
    end
end
