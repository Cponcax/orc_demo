require 'rubygems'
require 'rtesseract'
 
class Tess

  def open

   image = RTesseract.new("path", lang: "eng")
   image.to_s
  end

end

  teseractor = Tess.new

  p teseractor.open 
