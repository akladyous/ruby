class KlassWithSecret
  def initialize
    @secret = 99
  end
  private def the_secret
    "Ssssh! The secret is #{@secret}."
  end
end
k = KlassWithSecret.new
k.instance_eval { @secret }
#=> 99   k.instance_eval { the_secret }       #=> "Ssssh! The secret is 99."   k.instance_eval {|obj| obj == self } #=> true