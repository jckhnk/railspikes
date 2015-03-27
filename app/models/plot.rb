module Plot

  def self.column_names
  	fields = self.columns.map{|c| c.name}
  	newfields = fields - ["id", "created_at", "updated_at"]
    return [newfields[15]]+newfields[0..14]+newfields[16..-1]
  end

  def self.csv_column_names
  	return ["kic_tmid"]
  end

  def to_csv_xy(x, y)
  	return self.csv_column_names.map{|c| self.send(c)} + [self.send(x), self.send(y)]
  end

  def to_csv
  	return self.column_names.map{|c| self.send(c)}
  end

  def build_plot_data(x, y)
    data = []
    hash_data = {}
    data << self.send(x)
    data << self.send(y)
    self.class.column_names.each do |c|
      hash_data[c] = self.send(c)
    end
    data << hash_data
    return data
  end

end