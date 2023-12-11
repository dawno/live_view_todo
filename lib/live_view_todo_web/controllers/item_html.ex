defmodule LiveViewTodoWeb.ItemHTML do
  use LiveViewTodoWeb, :html

  embed_templates "item_html/*"

  # add class "completed" to a list item if item.status=1
  def complete(item) do
    case item.status do
      1 -> "completed"
      _ -> "" # empty string means empty class so no style applied
    end
  end

  def remaining_items(items) do
    Enum.filter(items, fn i -> i.status == 0 end) |> Enum.count
  end
end
