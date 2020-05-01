require 'birthday'

describe Birthday do 
  let(:bday) { double("bday", days_left: "2 days and 3 month")}

  it 'should return day till bday' do
    expect(subject.days_left(bday)).to eq bday.days_left
  end

end