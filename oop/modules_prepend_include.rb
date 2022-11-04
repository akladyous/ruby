class UserProtection
  attr_accessor :operator

  def name=(val)
    if operator && operator.admin
      super
    else
      raise "you don't have permissions to set this attributes"
    end
  end

  def admin=(val)
    if operator && operator.admin
      super
    else
      raise "you don't have permissions to set this attributes"
    end
  end
end
class User
  attr_accessor :name, :admin
  def initialize(name, admin)
    @name = name
    @admin = admin
  end
  prepend UserProtection
end
