defmodule VocialWeb.PollController do
  use VocialWeb, :controller


  def index(conn, _params) do
    poll = %{
      title: "My First Poll",
      options: [
        {"Choice 1", 0},
        {"Choice 2", 3},
        {"Choice 3", 5},
      ]
    }

    conn
    |> put_layout(:special)
    |> render(:index, poll: poll)
  end
end
