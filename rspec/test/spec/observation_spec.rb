describe "observation matchers" do

  it "will match when event change object attribute" do
    class WebSiteHits
      attr_accessor :count
      def initialize
        @count = 0
      end
      def increment
        @count += 1
      end
    end
    hits = WebSiteHits.new
    # expect { hits.increment }.to change {hits.count}.from(0).to(1)
    # second format for change :
    expect { hits.increment }.to change(hits, :count).from(0).to(1)
  end

  it "will match when change object attributes" do
    class Person
      attr_accessor :first_name, :last_name
      def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
      end
      def full_name
        [@first_name, @last_name].join(' ')
      end
    end
    mario = Person.new('mario', 'rossi')
    # expect do
    #   mario.last_name = 'smith'
    # end.to change(mario, :full_name).from('mariosssrossi').to('mario smith')
    # second format for expect
    expect { mario.last_name = 'smith'}.to change(mario, :full_name).from('mario rossi').to('mario smith')
  end


  it "excpect to raise an error" do
    class NumTest
      def initialize(num)
        @num=num
      end
    end
    expect { one = NumTest.new }.to raise_error(ArgumentError)
  end

  it "will match value from value1 to value2" do
    x = 10
    expect { x += 1 }.to change{x}.from(10).to(11)
    expect { x += 1 }.to change{x}.by(1)
  end
end
