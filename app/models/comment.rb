class Comment < ApplicationRecord
  belongs_to :agriculture
  belongs_to :education
  belongs_to :art
  belongs_to :user
end
