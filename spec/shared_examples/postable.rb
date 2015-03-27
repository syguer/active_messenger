shared_examples "postable" do
  describe '#send!' do
    subject! { messenger.send!("hoge") }
    it 'send message' do
    end
  end
end
