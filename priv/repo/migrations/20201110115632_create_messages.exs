defmodule MessageApp.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def change do
    create table(:messages, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :content, :string
      add :fromUser, :integer
      add :toUser, :integer

      timestamps()
    end

  end
end
