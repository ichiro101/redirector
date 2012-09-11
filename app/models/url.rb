class Url < ActiveRecord::Base
  attr_accessible :url

  after_save :create_short_url

  validates :url, :presence => true

  
  # For simplicity we are using id
  # as the short url, we can change this
  # field to be a randomly generated string
  def create_short_url
    if self.short_url.nil?
      self.short_url = self.id
      self.save
    end
  end
end
