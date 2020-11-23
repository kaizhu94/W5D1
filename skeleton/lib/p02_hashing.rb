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
    result = 0
    self.each_char do |ele|
      # id = ele.object_id.to_s
      id = ele.object_id
      result += id
    end
    result
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
