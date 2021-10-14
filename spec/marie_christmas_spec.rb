require 'nokogiri'
require 'open-uri'
require_relative '../lib/marie_christmas.rb'
describe "recup mail from url mairie" do
  it "it take email from url mairie" do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/villiers-le-sec.html")).to eq("mairie.villiers-le-sec@wanadoo.fr")
  end
end