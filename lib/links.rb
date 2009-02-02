module LinksHelper
  def panelists
    ["Greg Borenstein", "Tim Elliott", "Jay Phillips", "Yehuda Katz", "Blake Mizerany", "Josh Peek"]
  end
  
  def speaker_link(name)
    anchor = name.split(' ').last.downcase
    %Q[<a href="/speakers/index.html##{anchor}">#{name}</a>]
  end
  
  def session_link(anchor, title)
    %Q[<a href="/schedule/index.html##{anchor}">#{title}</a>]
  end
end

Webby::Helpers.register(LinksHelper)
