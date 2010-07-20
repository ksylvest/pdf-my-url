module ActionView
  module Helpers
      
    def pdf_my_url(name, url, options = {})
      
      parameters = ""
      
      parameters += "&--filename=#{options[:filename]}" if options[:filename]
      
      parameters += "&--orientation=Portrait" if options[:orientation] == :portrait
      parameters += "&--orientation=Landscape" if options[:orientation] == :landscape
      
      parameters += "&--page-size=#{options[:page_size]}" if options[:page_size]
      
      parameters += "&--proxy=#{options[:proxy]}" if options[:proxy]
      parameters += "&--username=#{options[:username]}" if options[:username]
      parameters += "&--password=#{options[:password]}" if options[:password]
      
      parameters += "&--page-width=#{options[:page_width]}" if options[:page_width]
      parameters += "&--page-height=#{options[:page_height]}" if options[:page_height]
      
      parameters += "&--margin-top=#{options[:margin_top]}" if options[:margin_top]
      parameters += "&--margin-left=#{options[:margin_left]}" if options[:margin_left]
      parameters += "&--margin-right=#{options[:margin_right]}" if options[:margin_right]
      parameters += "&--margin-bottom=#{options[:margin_bottom]}" if options[:margin_bottom]
      
      link_to name, "http://pdfmyurl.com/?url=#{url}#{parameters}"
      
    end
      
  end
end