def my_uniq(arr)
    no_dupes_arr = []

    arr.each do |ele|
        if !no_dupes_arr.include?(ele)
            no_dupes_arr << ele
        end
    end
    no_dupes_arr
end


def two_sum(arr)
    sum_arr = []
    arr.each_with_index do |ele, idx|
        arr.each_with_index do |ele_0, idx_0|
            if ele + ele_0 == 0 && idx != idx_0 && !sum_arr.include?([idx_0, idx])
                sum_arr << [idx, idx_0]
            end
        end
    end
    sum_arr
end

def my_transpose(arr)
    transposed_arr = Array.new(arr.length) {Array.new(arr[0].length)}

    arr.each_with_index do |ele, idx|
        ele.each_with_index do |ele_0, idx_0|
            transposed_arr[idx_0][idx] = arr[idx][idx_0]
        end
    end

    transposed_arr
end

def stock_picker(arr)
    biggest_diff = 0
    index_pair = []

    arr.each_with_index do |ele, idx|
        arr.each_with_index do |ele_0, idx_0|
            if ele_0 - ele > biggest_diff && idx < idx_0
                biggest_diff = ele_0 - ele
                index_pair = [idx, idx_0]
            end
        end
    end

    index_pair
end

def towers_of_hanoi()
    
end