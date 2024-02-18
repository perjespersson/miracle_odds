class BetApi < ApplicationRecord
  validates_presence_of :url, :name
end
