require 'rails_helper'

RSpec.describe "urls/index.html.erb", type: :view do
  let(:proper_long_url)   { 'http://www.google.com' }
  let(:proper_short_url)  { SecureRandom.base64[0..8] }
  before :each do
    assign :url, Url.create(long_url: proper_long_url, short_url: proper_short_url)
  end

  it "displays table with long url and short url" do
    assign :urls, Url.all
    render
    expect(rendered).to have_content("Create") 
    expect(rendered).to have_css("table") 
    expect(rendered).to have_content(proper_long_url) 
    expect(rendered).to have_content(proper_short_url) 
  end
end
