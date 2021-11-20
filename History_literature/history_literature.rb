require 'open-uri'
require 'nokogiri'
require 'json'
require 'csv'
require '/media/sf_u/save_to_csv.rb'
require '/media/sf_u/create_products.rb'

class HistoryLiterature
    url = 'https://nashformat.ua/catalog/istoriia-viiskova-sprava'
    html = URI.open(url)
    create = Create.new
    products = create.create_products(html)
    save = Save.new
    save.saveToCSV("/media/sf_u/History_literature/history_literature.csv", products)
end
