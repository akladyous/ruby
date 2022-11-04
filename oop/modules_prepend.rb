module EditProtection
  def enable_edits
    @editable = true
  end
  def disable_edits
    @editable = false
  end
  def self.prepended(klass)
    klass
    .instance_methods(false)
    .select { |meth| meth =~ /\w\=$/ }
    .each do |meth|
      define_method(meth) do |*args, &blk|
        if @editable
          super(*args, &blk)
        else
          rails "This object is not currently editable"
        end
      end
    end
  end
end
