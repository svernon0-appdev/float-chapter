describe "find_hypotenuse.rb" do
  it "should output '5.3''", points: 1 do
    find_hypotenuse_file = "find_hypotenuse.rb"
    file_contents = File.read(find_hypotenuse_file)
    File.foreach(find_hypotenuse_file).with_index do |line, line_num|
      if !line.include?("#") || line.include?("p") || line.include?("puts")
        expect(line).to_not match(/5.3/),
          "Expected 'find_hypotenuse.rb' to NOT literally print '5.3', but did anyway."
      end
    end

    output = with_captured_stdout { require_relative('../../find_hypotenuse')} 
    output = "empty" if output.empty? 
    expect(output.match?(/5.3/i)).to be(true),
      "Expected find_hypotenuse.rb output to be '5.3\n', but was #{output}."
    
  end
end

describe "round.rb" do
  it "should output '3.333'", points: 1 do
    
    round_file = "round.rb"
    file_contents = File.read(round_file)
    File.foreach(round_file).with_index do |line, line_num|
      if !line.include?("#") || line.include?("p") || line.include?("puts") 
        expect(line).to_not match(/3.333/),
          "Expected 'round.rb' to NOT literally print '3.333', but did anyway."
      end
    end

    output = with_captured_stdout { require_relative('../../round')} 
    output = "empty" if output.empty? 
    expect(output.match?(/3.333\n/i)).to be(true),
      "Expected round.rb output to be '3.333\n', but was #{output}."

  end
end


def with_captured_stdout
  original_stdout = $stdout  # capture previous value of $stdout
  $stdout = StringIO.new     # assign a string buffer to $stdout
  yield                      # perform the body of the user code
  $stdout.string             # return the contents of the string buffer
ensure
  $stdout = original_stdout  # restore $stdout to its previous value
end
