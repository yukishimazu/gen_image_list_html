
# 2020-11-05
# Generating Image List HTML

require 'erb'

exit 1 if ARGV.length != 1 || File.ftype(ARGV[0]) != 'directory'

target_dir = ARGV[0]
image_list = []

Dir.foreach(target_dir) do |item|
  next if item == '.' or item == '..'
  ext = File.extname(item)
  image_list << item if ext.downcase == '.jpg'
end

image_html_list = []
item_template_file = "#{__dir__}/item.html"
image_list.each { |img|
  erb = ERB.new(File.read(item_template_file))
  @src = img
  image_html_list << erb.result
}

body_template_file = "#{__dir__}/body.html"
erb = ERB.new(File.read(body_template_file))
@image_html = image_html_list.join

file = File.open("#{target_dir}/images.html",'w')
file.puts erb.result
file.close

puts "Generated: #{target_dir}/images.html"
sleep 5
