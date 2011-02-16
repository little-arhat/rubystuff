require_relative 'reader.rb'

reader = CSVReader.new
ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.load_csv(csv_file_name)
end

puts "Total value in stock #{reader.total_value}"

