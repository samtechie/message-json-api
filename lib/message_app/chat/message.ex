defmodule MessageApp.Chat.Message do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "messages" do
    field :content, :string
    field :fromUser, :integer
    field :toUser, :integer

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:content, :fromUser, :toUser])
    |> validate_required([:content, :fromUser, :toUser])
  end
end
