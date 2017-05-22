module ApplicationHelper

 	def markdown(text)

    	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, underline: true, strikethrough: true, quote: true)
    	markdown.render(text).html_safe

end

end
