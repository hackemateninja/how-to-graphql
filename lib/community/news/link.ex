defmodule Community.News.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :description, :string
    field :url, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:url, :description])
    |> validate_required([:url, :description])
  end
end
