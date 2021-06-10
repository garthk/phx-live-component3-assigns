defmodule BugDemoWeb.Components.Wrappers do
  use Phoenix.HTML
  import Phoenix.LiveView.Helpers

  def deletable(assigns) do
    ~L"""
    <div>
      <%= render_block(@inner_block, []) %>
      <%= "\u274c" %>
    </div>
    """
  end
end

defmodule BugDemoWeb.PageLive do
  use BugDemoWeb, :live_view

  @impl true
  def render(assigns) do
    ~L"""
    <%= f = form_for :form, "#" %>
      <%= label f, :name do %>
        <%= component &BugDemoWeb.Components.Wrappers.deletable/1 do %>
          content
        <% end %>
      <% end %>
    </form>
    """
  end
end
