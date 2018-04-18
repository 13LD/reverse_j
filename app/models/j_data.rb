class JData
  def self.process(data = {})
    reverse_recursively(data)
  end

  private



  def self.reverse_recursively(data)
    data.each_pair do |k, v|
      data[k] = v.is_a?(Hash) ? reverse_recursively(v) : v.to_s.reverse
    end
  end
end
