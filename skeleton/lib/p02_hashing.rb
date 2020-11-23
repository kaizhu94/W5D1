class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    string = ''
    self.each do |ele|
      id = ele.object_id.to_s
      string += id
    end
    string.to_i
  end
end

class String
  def hash
    string = ''
    self.each_char.with_index do |ele, i|
      # id = ele.object_id.to_s
      id = ele.object_id.to_i * i
      string += id.to_s
    end
    string.to_i
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
