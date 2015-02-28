class Page < ActiveRecord::Base
  attr_accessible :a, :b, :c
  scope :test, :conditions => {:a => 1}
end
