# 
# Here is where you will write the method #find_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def find_quote(filename, quoteline=nil)
  if all_quotes(filename).empty?
     "Could not find a quote at this time"
  else
    if (quoteline.nil? || (all_quotes(filename).length < quoteline) )
      all_quotes(filename).sample 
    else 
      all_quotes(filename)[quoteline]
    end
  end
end
