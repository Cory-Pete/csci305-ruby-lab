
#!/usr/bin/ruby
###############################################################
#
# CSCI 305 - Ruby Programming Lab
# <Cory> <Petersen>
# <peter.cory0@gmail.com>
#
###############################################################

$bigrams = Hash.new # The Bigram data structure
$name = "<Cory> <Petersen>"

# function to process each line of a file and extract the song titles
def process_file(file_name)
	puts "Processing File.... "

	begin
		IO.foreach(file_name) do |line|
			# do something for each line
		end

		puts "Finished. Bigram model built.\n"
	rescue
		STDERR.puts "Could not open file"
		exit 4
	end
end

def cleanup_title(file_cleanup)
	puts "finding titles..."
	
	begin 
		IO.foreach(file_cleanup) do |line|
		song_title = /^(?:[^|]*\|){3}([^|]*)/
		puts song_title
		
		end
	
	puts "song titles found"
	
end

# Executes the program
def main_loop()
	puts "CSCI 305 Ruby Lab submitted by #{$name}"

	if ARGV.length < 1
		puts "You must specify the file name as the argument."
		exit 4
	end

	# process the file
	process_file(ARGV[0])
	file_cleanup(ARGV[0])

	# Get user input
end

if __FILE__==$0
	main_loop()
end
