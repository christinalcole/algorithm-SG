#pseudo-code, method 2:
# 1. sort socks by one attribute (e.g., color or size)
# 2. within sorted socks, sort by second attribute to find pairs


#idea1: repl https://repl.it/IMAk/2  return is an array of hashes
socks = [
  { color: "red", size: "small" },
  { color: "blue", size: "small" },
  { color: "red", size: "small" },
  { color: "blue", size: "small" },
  { color: "red", size: "large" },
  { color: "blue", size: "large" },
  { color: "red", size: "large" },
  { color: "blue", size: "large" },
  { color: "green", size: "small" },
  { color: "black", size: "small" },
  { color: "green", size: "small" },
  { color: "black", size: "small" },
  { color: "green", size: "large" },
  { color: "black", size: "large" },
  { color: "green", size: "large" },
  { color: "black", size: "large" }]

  def sort_size(socks)
    small_array = []
    large_array = []

    socks.each do |sock|
      if sock[:size] == "small"
        small_array << sock
      elsif sock[:size] == "large"
        large_array << sock
      end
    end

    return [sort_by_color(large_array),sort_by_color(small_array)].flatten(1)
  end

  def sort_by_color(socks, final_sort=[])
    color_paired_socks = []

    if socks.length > 0
     socks.each do |sock|
      first_sock = socks.first

      if sock[:color] == first_sock[:color]
        final_sort << [sock, first_sock]
        socks.delete(sock)
      end
    end
    final_sort
  else
    return final_sort
  end

  sort_by_color(socks,final_sort)
end

  sort_size(socks)

  #idea2: https://repl.it/IMEn
  socks = [
  { color: "red", size: "small" },
  { color: "blue", size: "small" },
  { color: "red", size: "small" },
  { color: "blue", size: "small" },
  { color: "red", size: "large" },
  { color: "blue", size: "large" },
  { color: "red", size: "large" },
  { color: "blue", size: "large" },
  { color: "green", size: "small" },
  { color: "black", size: "small" },
  { color: "green", size: "small" },
  { color: "black", size: "small" },
  { color: "green", size: "large" },
  { color: "black", size: "large" },
  { color: "green", size: "large" },
  { color: "black", size: "large" },
  { color: "green", size: "medium" },
  { color: "black", size: "medium" },
  { color: "green", size: "medium" },
  { color: "black", size: "medium" },
  { color: "green", size: "medium" },
  { color: "black", size: "medium" },
  { color: "green", size: "medium" },
  { color: "black", size: "medium" }
  ]

  socks.sort_by do |sock|
    #sock[:size]
    sock[:color]
  end.each_slice(2).to_a


#radix sort implementation, source: https://medium.com/@tyguyo/all-sorts-of-sorts-5da9873aa046
#reminder: 'socks'[11,21,45,31,34,31,45,34,11,21]

def radix_sort(list)
  passes = (list.max == 0) ? 1 : Math.log10(list.max).to_i + 1
  new_list = []
  passes.times do |i|
    buckets = make_buckets
    list.each do |n|
      digit = get_digit(n, i)
      buckets[digit] += [n]
    end
    new_list, buckets = buckets.flatten, make_buckets
  end
  new_list
end

def make_buckets
  Array.new(10,[])
end

def get_digit(n, i)
  n % (10 ** (i + 1)) / (10 ** i)
end

radix_sort(11,21,45,31,34,31,45,34,11,21])
