# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :text, :title

  has_many :comments

  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true, length: { maximum: 200 }

end
