filename = ARGV[0]
file = File.open(filename)
text = file.read
print text
file.close

# ruby read_text.rb print_argv.rb