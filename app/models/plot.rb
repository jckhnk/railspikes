module Plot

  def self.included(klass)
    klass.extend ClassMethods
  end

  #
  # Class Methods.
  #
  module ClassMethods
    def all_column_names
    	fields = self.column_names - ["id", "created_at", "updated_at"]
    end
    
    def plot_column_names
    	fields = self.column_names - ["kepler_name", "confirmed", "id", "created_at", "updated_at"]
    end
    
    def csv_column_names
    	return ["kic_tmid"]
    end
  end

  #
  # Instance Methods.
  #
  def to_csv_xy(x, y)
  	return self.class.csv_column_names.map{|c| self.send(c)} + [self.send(x), self.send(y)]
  end

  def to_csv
  	return self.class.all_column_names.map{|c| self.send(c)}
  end

  def build_plot_data(x, y)
    data = []
    hash_data = {}
    data << self.send(x)
    data << self.send(y)
    self.class.all_column_names.each do |c|
      hash_data[c] = self.send(c)
    end
    data << hash_data
    return data
  end

end

