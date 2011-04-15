require 'test_helper'

class MainControllerTest < ActionController::TestCase
  
  test "should get root and contain valid links" do
    
    get :index
    
    assert_response :success
    
    assert_select '#link-1', :html => %(<a href="http://pdfmyurl.com?url=http://www.cbc.ca/">PDF</a>)
    assert_select '#link-2', :html => %(<a href="http://pdfmyurl.com?url=http://www.cbc.ca/&amp;--filename=CBC.pdf">PDF</a>)
    assert_select '#link-3', :html => %(<a href="http://pdfmyurl.com?url=http://www.cbc.ca/&amp;--orientation=Portrait">PDF</a>)
    assert_select '#link-4', :html => %(<a href="http://pdfmyurl.com?url=http://www.cbc.ca/&amp;--orientation=Landscape">PDF</a>)
    assert_select '#link-5', :html => %(<a href="http://pdfmyurl.com?url=http://www.cbc.ca/&amp;--page-size=A4">PDF</a>)
    assert_select '#link-6', :html => %(<a href="http://pdfmyurl.com?url=http://www.cbc.ca/&amp;--page-size=Letter">PDF</a>)
    assert_select '#link-7', :html => %(<a href="http://pdfmyurl.com?url=http://www.cbc.ca/&amp;--page-width=200&amp;--page-height=200">PDF</a>)
    assert_select '#link-8', :html => %(<a href="http://pdfmyurl.com?url=http://www.cbc.ca/&amp;--margin-top=10&amp;--margin-bottom=10">PDF</a>)
    
  end
  
end
