require 'rubygems'
require 'pdf/reader'
require 'origami'
require 'pry'

 class Pdf 
   FILE_PATH_WITH_EXCEPTION = "/home/alexandroponce/Documents/sample.pdf"
   FILE_PATH_WITHOUT_EXCEPTION = "/home/alexandroponce/Documents/AlexandroHeribertoPonce.pdf"

  def reader 
     reader = PDF::Reader.new(FILE_PATH_WITHOUT_EXCEPTION)
   
   reader.pages.each do |page|
 #    puts page.fonts
 #   puts page.text
    end

  keywords = [] 
  reader.pages.each do |page|
    string = page.text
      ["mysql", "ruby","Alexandro" ].each do |word|

          keywords.push(word) if string.downcase.include?(word.downcase)
     end
   end
  p keywords.uniq
 p ")))))))))))))))"
 

    rescue PDF::Reader::MalformedPDFError =>  e
        #pdf_originami = Origami::PDF.read FILE_PATH_WITHOUT_EXCEPTION 
	  {error: e, message: "sorry document error"}
  end

 end

 pdf = Pdf.new

 p pdf.reader 
