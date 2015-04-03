module Plot

  def self.included(klass)
    klass.extend ClassMethods
  end

  #
  # Class Methods.
  #
  module ClassMethods
    def safe_column_names
    	fields = self.column_names - ["id", "created_at", "updated_at"]
      return [fields[15]] + fields[0..14] + fields[16..-1]
    end
  end

  #
  # Instance Methods.
  #
  def self.csv_column_names
  	return ["kic_tmid"]
  end

  def to_csv_xy(x, y)
  	return self.csv_column_names.map{|c| self.send(c)} + [self.send(x), self.send(y)]
  end

  def to_csv
  	return self.safe_column_names.map{|c| self.send(c)}
  end

  def build_plot_data(x, y)
    data = []
    hash_data = {}
    data << self.send(x)
    data << self.send(y)
    self.class.safe_column_names.each do |c|
      hash_data[c] = self.send(c)
    end
    data << hash_data
    return data
  end

end

