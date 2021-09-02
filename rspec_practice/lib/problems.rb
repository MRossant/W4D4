class Array

    def my_uniq
        result = []
        self.each {|el| result << el if !result.include?(el)}
        result
    end

    def two_sum
        result = []
        (0...self.length).each do |i|
            (i + 1...self.length).each do |j|
                result << [i, j] if self[i] + self[j] == 0
            end
        end
        result
    end
end
