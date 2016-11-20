# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  time       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Todo < ActiveRecord::Base
  belongs_to :user

  validates :title, uniqueness: true
  validates :title, presence: {message: "Each todo list item needs a title"}
  validates :user_id, presence: {message: "Each todo list itme needs to have a user"}
end
