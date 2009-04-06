class Hole < ActiveRecord::Base
  belongs_to :month_outcome
  validates_presence_of :concept, :quantity

  after_save :update_month_outcome

  def self.from_raw(raw)
    sanitized_raw = raw.gsub('$','').gsub(',','.')
    quantity = sanitized_raw.match('(\d)+(\.(\d)+)?')[0]
    concept = sanitized_raw.gsub(quantity, '').strip
    Hole.new(:quantity => quantity, :concept => concept)
  end

  private

  def update_month_outcome
    self.month_outcome.outcome += self.quantity
    self.month_outcome.save
  end

end
