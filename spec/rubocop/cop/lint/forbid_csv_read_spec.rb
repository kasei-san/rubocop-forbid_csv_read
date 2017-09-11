require 'spec_helper'

RSpec.describe RuboCop::Cop::Lint::ForbidCsvRead do
  subject(:cop) { described_class.new }

  context 'raise' do
    let(:source){'CSV.read("01.csv")'}
    it '' do
      inspect_source(cop, source)
      expect(cop.messages)
        .to eq(['CSV.read wastes a lot of memory. Use CSV.foreach'])
      expect(cop.offenses.size).to eq(1)
      expect(cop.highlights).to eq(['CSV.read("01.csv")'])
    end
  end
end
