def lazy_emoji_finder(emojis)
  if emojis.length <= 2
    emoji_a = emojis[0]
    emoji_b = emojis[-1]
  else
    midpoint = emojis.length/2

    one_half = emojis[0..midpoint]
    second_half = emojis[midpoint+1..-1]

    emoji_a = lazy_emoji_finder(one_half)
    emoji_b = lazy_emoji_finder(second_half)
  end
    emoji_a.code > emoji_b.code ? emoji_a : emoji_b
end  
