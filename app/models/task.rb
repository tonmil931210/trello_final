class Task < ActiveRecord::Base
  belongs_to :user

  validates :title, :description, :start_date, :finish_date, :duration, presence: true
  validates :duration, numericality: { only_integer: true }
  validate :format_date
  
  private
  def format_date
    unless self.start_date <= self.finish_date
      errors.add(:start_date, 'cant exceed to finish date')
    end
  end
end