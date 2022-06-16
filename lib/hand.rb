require "byebug"
class Hand

    attr_reader :hand

    def initialize(arr)
        @hand = arr
    end

    def check_pairs
        values = hand.map(&:val)
        count = values.max_by { |val| values.count(val) }
        if values.length == 4
            1
        elsif values.length == 3
            2
        else
            false
        end
    end

    def three_of_a_kind
        values = hand.map(&:val).uniq
        values.length == 3
    end

    def four_of_a_kind
        values = hand.map(&:val).uniq
        values.length == 2
    end

    def check_straights
        sorted_hand = hand.sort_by(&:val)
        (0...hand.length - 1).each do |i|
            return false unless hand[i].val + 1 == hand[i + 1].val
        end
        sorted_hand.last.val
    end

    def check_flush
        hand.each { |card| return false unless hand.sym == hand[0].sym }
        hand.map(&:val).sort
    end

    def hand_value
        return 9 if check_flush && check_straights == 13
        return 8 if check_flush && check_flush
        return 7 if four_of_a_kind
        return 6 if three_of_a_kind && check_pairs == 1
        return 5 if check_flush
        return 4 if check_straights
        return 3 if three_of_a_kind
        return 2 if check_pairs == 2
        return 1 if check_pairs == 1
        0

    end

    def tie_break_val
        hand.map(&:val).sort.last
    end

end