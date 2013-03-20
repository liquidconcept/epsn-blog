module Custom
  def unexcerpt(input)
    if input.index(/<!--\s*more\s*-->/i)
      input.split(/<!--\s*more\s*-->/i)[1]
    else
      input
    end
  end

  def strip_img_p(input)
    input.gsub(/<p>\s*?(<img .*? ?\/?>)\s*?<\/p>/, '\1')
  end

  def picture_of_author(input)
    name = input
    picture = input.downcase.gsub(/ /, '_')
    return "<img src='/images/#{picture}.png'><span class='name'>#{name}</span>"
  end
end

Liquid::Template.register_filter Custom