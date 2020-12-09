class Item < ApplicationRecord
    validates :name, :presence => true, :length => { :maximum => 15 }
    validates :priority, :presence => true, :inclusion => { :in => 1..10, :message => "%{value} is not within required range" }, :numericality => { :only_integer => true }
    validate :name_must_be_capitalized
 
  def name_must_be_capitalized
    if self.name.capitalize != self.name
      errors.add(:name, "item name must be capitalized")
    end
  end
end
