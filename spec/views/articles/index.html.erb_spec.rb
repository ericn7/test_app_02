require 'spec_helper'

describe "articles/index.html.erb" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :title => "Title",
        :article_text => "MyText",
        :position => 1
      ),
      stub_model(Article,
        :title => "Title",
        :article_text => "MyText",
        :position => 1
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
