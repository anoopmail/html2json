require "html2json/version"
module Html2Json
require "open-uri"
require "nokogiri"
class Web
	def initialize(url)
		@doc = Nokogiri::HTML(open(url));
		@result = Hash.new
	end

	def pick(xpath_expression, key="result")
		value		= @doc.xpath(xpath_expression) 
		temp		= Hash.new
		temp[key]	= value.map{|i| i.text }
		@result.merge!(temp)
		ActiveSupport::JSON.encode(temp)
	end

	def render()
		ActiveSupport::JSON.encode(@result)
	end

end
end
