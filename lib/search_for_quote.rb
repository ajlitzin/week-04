# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def search_for_quote(criteria)
result =[]
  if all_quotes(criteria[:file]).empty?
    return []
  elsif (criteria[:start_with].nil? && criteria[:end_with].nil? && criteria[:include].nil?)
    all_quotes(criteria[:file])
  else
    aq = all_quotes(criteria[:file])
    criteria.map do |key,value|
      next if key == :file
        if key == :include && !key.nil?
          aq.find_all do |quote|
            if quote.include?(value)
              result = result.push quote
            end 
        end
	elsif key == :start_with && !key.nil?
          aq.find_all do |quote|
            if quote.start_with?(value)
              result = result.push quote
            end 
	  end
	elsif key == :end_with && !key.nil?
          aq.find_all do |quote|
	    if quote.end_with?(value)
              result = result.push quote
            end 
	  end
        end
    end
    return result
  end
end
