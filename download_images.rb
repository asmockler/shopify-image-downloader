require 'json'
require 'open-uri'

products_file = File.read('products.json')
products_file_json = JSON.parse(products_file)
products = products_file_json["products"]

system 'mkdir', '-p', 'images'

products.each do |product|
  path = "images/#{ product["title"] }"
  system 'mkdir', '-p', path
  product["images"].each do |image|
    url = image["src"].split("?v")[0]
    filename = url.split('/')[-1]
    File.open("#{path}/#{filename}", 'wb') { |file| file.write open(url).read }
  end
end

