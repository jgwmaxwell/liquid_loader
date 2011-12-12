class <%= class_name %>Drop < Liquid::Drop

  def initialize(drop)
    @drop = drop
  end

  <% for att in @attributes %>

  def <%= att %>
    @drop['<%= att %>']
  end

  <% end %>

  <% for assoc in @associations %>
  def <%= assoc.name %>
    @drop.<%= assoc.name %>
  end
  <% end %>
end
