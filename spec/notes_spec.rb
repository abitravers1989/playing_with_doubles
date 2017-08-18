require 'notes'

describe Notes do
  it 'the display method formats title and body' do
   let(:notesfor) { double :notesfor}
   let(:notes) { described_class.new }
   allow(:notesfor).to_recieve(:format).and_return "Hey\ndhdj"
   expect(notes.display).to eq "Title Hey\ndhj"
end

end
