require_relative 'cssblock'

describe CssBlock do
  it 'does what i say' do
    tst = CssBlock.new("#some_id .class a").set("color", "#FFF").set({ "color" => "#000", "text-decoration" => "underline"})
    puts tst.to_s
    # => "#some_id .class a { color: #000; text-decoration: underline }"
  end

end

