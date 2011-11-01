

# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def url_builder(url, *options)
  urlbase= "#{url}?"
  urlstring = ""
  if options.empty?
    return "#{urlbase}results=10" 
  elsif options.length > 0
	options.each do | hashparams |
	  hashparams.each do |key,value|
	    unless value.nil?
          urlstring = urlstring + "#{key.to_s}=#{value}&"
		end  
	  end
	end
	urlstring = urlbase + urlstring
	if urlstring.end_with?("&")
	  urlstring.chop!	  
	end
	return urlstring
  end #options.empty
end #def
