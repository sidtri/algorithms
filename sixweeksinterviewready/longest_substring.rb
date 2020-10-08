# @param {String} s
# @return {Integer}
require 'pry'
def length_of_longest_substring(s)
  max_length = 0
  window_start = 0
  char_index_map = {}

  (s.length).times do |index|
    end_char = s[index]

    if char_index_map.keys.include?(end_char)
      window_start = [window_start, char_index_map[end_char] + 1].max
    end

    char_index_map[end_char] = index

    max_length = [max_length, index - window_start + 1].max
  end

  max_length
end

print length_of_longest_substring("sidpriya")