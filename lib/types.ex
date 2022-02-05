defmodule Spooky.Types do
  use TypedStruct

  typedstruct module: VisibleUser do
    field(:id, String.t())
    field(:name, String.t())
    field(:username, String.t())
    field(:type, :team | :user)
  end

  typedstruct module: Responder do
    field(:id, String.t())
    field(:name, String.t())
    field(:username, String.t())
    field(:type, :team | :user)
  end

  typedstruct module: AlertRequest do
    field(:message, String.t())
    field(:alias, String.t())
    field(:description, String.t())
    field(:responders, list(Responder))
    field(:visible_to, list(VisibleUser))
    field(:actions, list(String))
    field(:tags, list(String))
    field(:details, String.t())
    field(:entity, String.t())
    field(:priority, :P1 | :P2 | :P3 | :P4 | :P5)
  end
end
