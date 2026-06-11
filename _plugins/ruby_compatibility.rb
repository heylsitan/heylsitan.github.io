# Monkey patch for Ruby 3.2+ compatibility
# The tainted? method was removed in Ruby 3.2
class String
  def tainted?
    false
  end
end

class Object
  def tainted?
    false
  end
end
