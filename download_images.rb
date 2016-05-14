require 'json'
require 'open-uri'

products_file = File.read('products.json')
products_file_json = JSON.parse(products_file)
products = products_file_json["products"]

products.each do |product|
  product["images"].each do |image|
    url = image["src"].split("?v")[0]
    File.open(url.split("/")[-1], 'wb') { |file| file.write open(url).read }
  end
end
