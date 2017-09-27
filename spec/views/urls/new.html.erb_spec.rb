require 'rails_helper'

RSpec.describe "urls/new.html.erb", type: :view do
  it 'display the form without any error' do
    assign :url, Url.new
    render
    expect(rendered).to have_css("form")
    expect(rendered).to have_content("Long url")
  end
end
