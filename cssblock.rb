class CssBlock
  attr_reader :selector, :properties
  def initialize(selector, properties = {})
    @selector = selector.dup.freeze
    @properties = properties.dup.freeze
  end

  def set(key, value = nil)
    new_properties = if key.is_a?(Hash)
                       key
                     elsif !value.nil?
                     {
                       key => value
                     }
                     else
                       raise "either provide a hash or key and value"
                     end
    self.class.new(self.selector, self.properties.merge(new_properties))
  end

  def to_s 
    serialized_properties = self.properties.inject([]) do |acc, (k,v)|
      acc + ["#{k}: #{v}"]
    end

    "#{self.selector} { #{serialized_properties.join("; ")}}"
  end


end

