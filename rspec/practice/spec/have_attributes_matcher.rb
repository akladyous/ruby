require 'debug'
Person = Struct.new(:name)

describe Person do
  before(:all) { @bob = Person.new 'bob' }
  it "have_attributes" do
    # expect(@bob).to have_attributes(:name)
    # expect(@bob).to have_attributes(:name => a_string_starting_with('b') )
    # expect(@bob).to have_attributes(:name => a_string_including('b') )
    # expect(@bob).to have_attributes(:name => a_value('bob') )
    # expect(@bob).to satisfy do |obj|
    #   obj.respond_to?(:name) && obj.name == 'bob'
    # end
    expect(@bob).to be_an_instance_of(Person)
  end
end
