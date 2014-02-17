class NewsPost < ActiveRecord::Base
  validates :title, :body, presence: true
  validates :title, length: { in: 2..255 }
  validates :body, length: { in: 3..200000 }

end
