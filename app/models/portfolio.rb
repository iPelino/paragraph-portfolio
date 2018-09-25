class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  #option 1
  def self.angular
    where(subtitle: 'Angular JS')
  end

  #option 2
  scope :ror, -> {where(subtitle: 'Ruby on Rails')}
end
