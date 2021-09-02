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

    def my_transpose
        (0...self.length - 1).each do |i|
            raise "unequal lengths error" if self[i].length != self[i + 1].length
        end

        result = []
        
        (0...self.length).each do |row_i|
            temp = []
            (0...self.length).each do |col_i|
                temp << self[col_i][row_i]
            end
            result << temp
        end
        
        result
    end

    def stock_picker
        raise "There are no days" if self.empty?
        raise "There is only 1 day" if self.length == 1

        peak = self.index(self.max)
        low = self.index(self.take(peak).min)
        [low, peak]
    end
end
