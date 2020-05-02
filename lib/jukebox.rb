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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name_or_number = gets.strip
  if songs.include? song_name_or_number
    puts "Playing #{song_name_or_number}"
  elsif song_name_or_number.to_i <= songs.length && song_name_or_number.to_i >= 1
    puts "Playing #{songs[song_name_or_number.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.chomp
  if command == 'exit'
    exit_jukebox
  elsif command == 'list'
    list(songs)
    run(songs)
  elsif command == 'play'
    play(songs)
    run(songs)
  elsif command == 'help'
    help
    run(songs)
  end
    
end