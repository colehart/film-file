# Film class
class Film < ActiveRecord::Base
  validates :title, presence: true
  validates :year, presence: true
  validates :box_office_sales, presence: true

  def self.total_box_office_sales
    sum(:box_office_sales)
  end

  def self.average_box_office_sales
    average(:box_office_sales)
  end
end
