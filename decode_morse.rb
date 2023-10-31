MORSE_CODE = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }

  def decode_char(char)
    MORSE_CODE[char]
  end

  puts decode_char(".-")


  def decode_word(word)
    word.split(" ").map{ |char| decode_char(char)}.join("")
  end

  puts decode_word("-- -.--   -. .- -- .")

  def decode(message)
    words = message.split("  ")
    words.map {|word| decode_word(word)}.join(" ")
  end

  puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
