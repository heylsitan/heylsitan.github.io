# Fix for Ruby 3.2+ compatibility
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
