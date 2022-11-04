class A
  def prova
    puts 'prova from A'
  end
end

class B < A
  def prova
    puts 'prova from B'
    super
  end
end

b1=B.new.prova
