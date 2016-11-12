# frozen_string_literal: true

Dmmyix::Engine.routes.draw do
  get "*path", to: "images#show"
end
