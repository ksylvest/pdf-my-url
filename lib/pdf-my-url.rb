require 'pdf-my-url/railtie'

module PdfMyUrl
    
  
  # Create a link with the approriate parameters to the service.
  #
  # Options: 
  #
  # * :protocol    - set a custom protocol (the default is 'http' and 'https' is supported)
  # * :filename    - set a custom name to download (the default is the filename made from the url)
  # * :orientation - set a document orientation to landscape (:landscape) or portrait (:portrait)
  # * :proxy       - set a custom proxy to access the url
  # * :username    - set a http authentication username used when accessing the url
  # * :password    - set a http authentication password used when accessing the url
  # * :page
  #   * :size      - set a page size (for example: 'A4' or 'Letter')
  #   * :width     - set a page width (for example: '200mm') with a default unit of millimeters
  #   * :height    - set a page height (for example: '300mm') with a default unit of millimeters
  # * :margin
  #   * :top       - set a margin (for example: '10mm') or use the default 10mm
  #   * :left      - set a margin (for example: '10mm') or use the default 10mm
  #   * :right     - set a margin (for example: '10mm') or use the default 10mm
  #   * :bottom    - set a margin (for example: '10mm') or use the default 10mm
  
  def pdf_my_url(name, url, options = {})
    
    protocol = options[:protocol] || 'http'
    
    options[:page  ] ||= {}
    options[:margin] ||= {}
    
    parameters = "?url=#{url}"
    
    parameters += "&--filename=#{options[:filename]}" if options[:filename]
    
    parameters += "&--orientation=Portrait"  if options[:orientation] == :portrait
    parameters += "&--orientation=Landscape" if options[:orientation] == :landscape
    
    parameters += "&--proxy=#{options[:proxy]}" if options[:proxy]
    
    parameters += "&--username=#{options[:username]}" if options[:username]
    parameters += "&--password=#{options[:password]}" if options[:password]
    
    parameters += "&--page-size=#{options[:page][:size]}"     if options[:page][:size  ]
    parameters += "&--page-width=#{options[:page][:width]}"   if options[:page][:width ]
    parameters += "&--page-height=#{options[:page][:height]}" if options[:page][:height]
    
    parameters += "&--margin-top=#{options[:margin][:top]}"       if options[:margin][:top   ]
    parameters += "&--margin-left=#{options[:margin][:left]}"     if options[:margin][:left  ]
    parameters += "&--margin-right=#{options[:margin][:right]}"   if options[:margin][:right ]
    parameters += "&--margin-bottom=#{options[:margin][:bottom]}" if options[:margin][:bottom]
    
    link_to name, "#{protocol}://pdfmyurl.com#{parameters}"
    
  end
  
  
end