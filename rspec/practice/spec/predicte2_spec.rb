module MyModule; end

class Float
  include MyModule
end

RSpec.describe 17.0 do
  # the actual class
  it { is_expected.to be_kind_of(Float) }
  it { is_expected.to be_a_kind_of(Float) }
  it { is_expected.to be_a(Float) }

  # the superclass
  it { is_expected.to be_kind_of(Numeric) }
  it { is_expected.to be_a_kind_of(Numeric) }
  it { is_expected.to be_an(Numeric) }

  # an included module
  it { is_expected.to be_kind_of(MyModule) }
  it { is_expected.to be_a_kind_of(MyModule) }
  it { is_expected.to be_a(MyModule) }

  # negative passing case
  it { is_expected.not_to be_kind_of(String) }
  it { is_expected.not_to be_a_kind_of(String) }
  it { is_expected.not_to be_a(String) }

  # deliberate failures
  it { is_expected.not_to be_kind_of(Float) }
  it { is_expected.not_to be_a_kind_of(Float) }
  it { is_expected.not_to be_a(Float) }
  it { is_expected.not_to be_kind_of(Numeric) }
  it { is_expected.not_to be_a_kind_of(Numeric) }
  it { is_expected.not_to be_an(Numeric) }
  it { is_expected.not_to be_kind_of(MyModule) }
  it { is_expected.not_to be_a_kind_of(MyModule) }
  it { is_expected.not_to be_a(MyModule) }
  it { is_expected.to be_kind_of(String) }
  it { is_expected.to be_a_kind_of(String) }
  it { is_expected.to be_a(String) }
end
