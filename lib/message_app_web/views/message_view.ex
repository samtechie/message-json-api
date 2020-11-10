defmodule MessageAppWeb.MessageView do
  use MessageAppWeb, :view
  alias MessageAppWeb.MessageView

  def render("index.json", %{messages: messages}) do
    %{data: render_many(messages, MessageView, "message.json")}
  end

  def render("show.json", %{message: message}) do
    %{data: render_one(message, MessageView, "message.json")}
  end

  def render("message.json", %{message: message}) do
    %{id: message.id,
      content: message.content,
      fromUser: message.fromUser,
      toUser: message.toUser}
  end
end
