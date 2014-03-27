module ResponsesHelper
	 def render_response_hangout_link(response)
    des = response.hangout_link.split(' ')
    i = 0
    link_extract = []
    while i < des.length
      if des[i].start_with?('http')
        link_extract << "<a target='_blank' href='#{des[i]}'>#{des[i]}</a>"
      else 
        link_extract << des[i]
      end
      i += 1
    end 
    return link_extract.join(' ').html_safe
  end
end
