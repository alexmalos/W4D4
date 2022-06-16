require "card"
class Deck

    def initialize
        @deck_arr = Array.new(52)
        self.populate
        
    end

    def size
        @deck_arr.length
    end

    def populate
        sym_arr = [:sp, :cl, :he, :di]

        @deck_arr.each_with_index do |ele, idx|
            @deck_arr[idx] = Card.new(idx % 13 + 1, sym_arr[idx % 4])
        end
    end
end