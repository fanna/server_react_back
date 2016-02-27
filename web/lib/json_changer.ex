defmodule ServerReactBack.JsonChanger do
  def change(data) do
    data = %{"body" => random()}
  end

  defp random() do
    list = ["true", "false"]
    Enum.random(list)
  end
end
