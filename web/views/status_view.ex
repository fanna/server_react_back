defmodule ServerReactBack.StatusView do
    use ServerReactBack.Web, :view
    def render("show.json", %{status: status}) do
      status
    end
end
