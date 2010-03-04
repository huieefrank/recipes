class Event < ActiveRecord::Base
	
	extend Searchable
    search_column :name, :starts_at
    
    validates_presence_of :name, :capacity
    
  def self.copy(other)
    self.new(other.attributes.merge(:name => "Copy of #{other.name}"))
  end
  
  def free?
    self.price == 0
  end
end
