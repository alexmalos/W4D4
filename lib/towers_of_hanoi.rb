class TowersOfHanoi

    attr_accessor :arr1, :arr2, :arr3

    def initialize
        @arr1 = [4,3,2,1]
        @arr2 = []
        @arr3 = []
    end

    def move
        puts "Enter your Moves now"
        start_pos = gets.chomp.to_i
        end_pos = gets.chomp.to_i
        hanoi_hash = { 1 => arr1, 2 => arr2, 3 => arr3 }
        hanoi_hash[end_pos] << hanoi_hash[start_pos].pop
        won?
    end

    def won?
        if arr3 == [4,3,2,1]
            return true
        end
        false
    end

end