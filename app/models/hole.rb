class Hole < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :concept, :quantity

  def self.from_raw(raw)
    quantity = raw.gsub('$','').match('(\d)+(\.(\d)+)?')[0]
    concept = raw.gsub('$','').gsub(quantity, '').strip
    Hole.new(:quantity => quantity, :concept => concept)
  end
  
end
