module QuestionsHelper
  def render_question_description
    des = @question.description.split(' ')
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

  def render_question_hangout_link
    des = @question.hangout_link.split(' ')
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

  def render_response(response)
    res = response.response.split(' ')
    i = 0
    link_extract = []
    while i < res.length
      if res[i].start_with?('http')
        link_extract << "<a target='_blank' href='#{res[i]}'>#{res[i]}</a>"
      else 
        link_extract << res[i]
      end
      i += 1
    end 
    return link_extract.join(' ').html_safe
  end
end