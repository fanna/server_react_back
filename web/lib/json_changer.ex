defmodule ServerReactBack.JsonChanger do

  def change(data) do
    data = %{:status => random_status(), :rack => random_rack(), :server => random_server(), :cpu => random_cpu()}
  end

  defp random_status() do
    list = [true, false]
    Enum.random(list)
  end

  defp random_rack() do
    list = [0, 1, 2, 3, 4, 5]
    Enum.random(list)
  end

  defp random_server() do
    list = [0, 1, 2, 3, 4, 5]
    Enum.random(list)
  end

  defp random_cpu() do
    list = [0, 1, 2, 3]
    Enum.random(list)
  end
end
