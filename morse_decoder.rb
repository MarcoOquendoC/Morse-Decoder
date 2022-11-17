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
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?',
  '.----.' => "'",
  '-.-.--' => '!',
  '-..-.' => '/',
  '-.--.' => '(',
  '-.--.-' => ')',
  '.-...' => '&',
  '---...' => ':',
  '-.-.-.' => ';',
  '-...-' => '=',
  '.-.-.' => '+',
  '-....-' => '-',
  '..--.-' => '_',
  '.-..-.' => '"',
  '...-..-' => '$',
  '.--.-.' => '@'
}.freeze

def morse_decoder(string)
  string.split('   ')
    .map do |word|
    word.split
      .map do |letter|
      MORSE_CODE[letter]
    end
      .join
  end
    .join(' ')
end

string1 = '-- -.--   -. .- -- .'
puts "#{string1} => " << morse_decoder(string1)
string2 = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts "#{string2} => " << morse_decoder(string2)
