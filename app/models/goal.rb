# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  time       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Goal < ActiveRecord::Base
  belongs_to :user

  validates :title, uniqueness: true
  validates :title, presence: {message: "Each goal needs a title"}
  validates :user_id, presence: {message: "Each goal needs to have a user"}
end
