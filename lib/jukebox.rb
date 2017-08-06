songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)


def help
  help =
  ["I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"]

puts help
end

def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
  end
end

def play (songs)
puts "Please enter a song name or number:"
playing = gets.chomp

if songs.include? (playing)
  puts "Playing: #{playing}"
elsif (1..9).to_a.include?(playing.to_i)
  puts "Playing: #{songs[playing.to_i - 1]}"
else puts "Invalid input, please try again"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  input = ""
  while input
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
