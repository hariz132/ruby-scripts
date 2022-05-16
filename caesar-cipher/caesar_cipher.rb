def caesar_cipher(str, shift)
  str.codepoints.reduce("") do |string_result, codepoint|
    string_result + shift_codepoint(codepoint, shift).chr
  end
end

def shift_codepoint(codepoint, shift)
  if codepoint >= 65 && codepoint <= 90
    new_codepoint = codepoint + shift
    if new_codepoint > 90
      new_codepoint - 90 + 64
    else
      new_codepoint
    end
  elsif codepoint >= 97 && codepoint <= 122
    new_codepoint = codepoint + shift
    if new_codepoint > 122
      new_codepoint - 122 + 97
    else
      new_codepoint
    end
  else
    codepoint
  end
end

p caesar_cipher("What a string!", 5)