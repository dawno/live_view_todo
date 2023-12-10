defmodule LiveViewTodo.TodoFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LiveViewTodo.Todo` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        person_id: 42,
        status: 42,
        text: "some text"
      })
      |> LiveViewTodo.Todo.create_item()

    item
  end
end
