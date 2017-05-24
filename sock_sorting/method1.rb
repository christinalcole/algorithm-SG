#reminder: 'socks'[11,21,45,31,34,31,45,34,11,21]

#pseudo-code, method 1:
# method 1: pick a sock, dig through pile, find its match.  get a new sock.  repeat
# 1. go through array, take first number
# 2. compare to all of array; when you find match, pull both out
# 3. shove paired numbers into a new array
# 4. repeat until first array is empty
# 5. return array of matched socks, represented as array of arrays (e.g., [[11,11], [21,21]...])

#idea1 (jmverdone; https://repl.it/Hzdl/1)
socks = [11,21,45,31,34,31,45,34,11,21]

#get the pairs of socks together.
def sock_sort(socks, final_sort = [])

  paired_socks = []

  if socks.length > 0
    socks.each_with_index do |sock, index|
      first_sock = socks.first
      if sock == first_sock
        paired_socks << [sock, first_sock]
        socks.delete(sock)
      end
    end
    final_sort << paired_socks
  else
    return final_sort
  end

  print sock_sort(socks,final_sort)
end

sock_sort(socks)

#idea2 (dwyn)
require 'pry'
socks = [11, 21, 45, 31, 34, 31, 45, 34, 11, 21]

def sorting_socks(socks)
	# first_sock = socks[0]
	paired_socks = []

	until socks.length == 0
		socks.each do |sock|
			temp_array = []
			if sock == socks[0]
				temp_array << sock
				temp_array << socks[0]
				paired_socks << temp_array
				#binding.pry
				socks.shift
        socks.delete(sock)
			end

		end
	end
	print paired_socks
	#binding.pry
end

sorting_socks(socks)

#idea3 (juangong)
ary = [11,21,45, 31, 34, 31, 45, 34, 11, 21]
def sorting_socks(socks)
  puts "main sock array: #{socks}"
  paired_socks = []
  socks.each do |sock|
    first_sock = socks.shift
    puts "this is current sock: #{first_sock}"
    if sock == first_sock
      paired_socks << sock
      paired_socks << sock
      puts "this is value: #{sock}"
      puts "this is the pair: #{paired_socks}"
    end
    unless socks.empty?
      sorting_socks(socks)
    end
  end
end
p sorting_socks(ary)

#idea4 (mxdavis)
socks = [11,21,45,31,34,31,45,34,11,21]

def sort_through_pairs(socks)
  socks.sort!
  paired_socks = []
  while socks.length > 0
    if socks[0] == socks[1]
      paired_socks <<
      socks.shift(2)
    end
  end
  print paired_socks
end

sort_through_pairs(socks)

#idea5 (igoreskin) => returns hash where key, value represents a pair of socks
{11 => 11, 21=>21, ...}
def sorting_socks(socks)
  sorted = Hash.new
  i = 0
  while i < socks.length
    j = i + 1
    while j < socks.length
      if socks[i] == socks[j]
        sorted[socks[i]] = socks[j]
        socks.delete_at(socks[0])
      end
      j += 1
    end
    i += 1
  end
  sorted
end

p sorting_socks([11, 21, 45, 31, 34, 31, 45, 34, 11, 21])
