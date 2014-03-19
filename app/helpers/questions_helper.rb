module QuestionsHelper
  def render_response(response)
    res = response.response.split(' ')
    i = 0
    narr = []
    while i < res.length
      if res[i].start_with?('http')
        narr << "<a href='#{res[i]}'>#{res[i]}</a>"
      else 
        narr << res[i]
      end
      i += 1
    end 
    return narr.join(' ').html_safe
  end
end