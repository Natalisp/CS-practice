def multiplication(a, b)
  if b == 1
    return a
  else
    return a + multiplication(a, b - 1)
 end
end

def recursive_reverse(string)
  if string.length == 1
     string
  else
     string[-1] + recursive_reverse(string[0...-1])
 end
end

# recursive_reverse('alex')

def append_down(result, n)
  if n == 0
    result << 0
  else
    result << n
    append_down(result, n-1)
    result
  end
end

 # append_down([],9)

 def total_count_negative_ints(arr, count)
  if arr.length == 0
    count
  else
    if arr[0] < 0
      count+=1
    end
    total_count_negative_ints(arr[1..-1],count)
  end
end

 total_count_negative_ints([-4,3,-1,3,-1,-7], 0)

 text = "how does that lizard feel?"
 subsequence = "word"

 def is_subsequence?(text, subsequence)
   if text.length == 0
     subsequence == ""
   else
    if text[0] == subsequence[0]
      is_subsequence?(text[1..-1], subsequence[1..-1])
    else
      is_subsequence?(text[1..-1], subsequence)
   end
  end
 end

  # is_subsequence?(text, subsequence)
