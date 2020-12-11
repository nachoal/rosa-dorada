require 'spec_helper'

root = File.dirname(__FILE__) + '/..'
golden_master_file_path = File.join(root, 'golden_master.txt')
golden_master = File.read(golden_master_file_path)
golden_master_lines = golden_master.split("\n")

rosa_dorada_file = 'rosa_dorada'

current_output = `ruby #{root}/texttest_fixture.rb 100 #{rosa_dorada_file}`
current_output_lines = current_output.split("\n")

lines_to_compare = [golden_master_lines.count, current_output_lines.count].max

describe 'Golden Master for Rosa Dorada' do
  lines_to_compare.times do |line_num|
    it "match line #{line_num}: #{current_output_lines[line_num]} should equal #{golden_master_lines[line_num]}" do
      expect(current_output_lines[line_num]).to eq golden_master_lines[line_num]
    end
  end
end
