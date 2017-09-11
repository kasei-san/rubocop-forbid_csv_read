require 'spec_helper'

RSpec.describe RuboCop::Cop::Lint::ForbidCsvRead do
  subject(:cop) { described_class.new }

  context 'Use CSV.read' do
    it 'Raise ForbidCsvRead' do
      inspect_source(cop, 'CSV.read("01.csv")')
      expect(cop.messages)
        .to eq(['CSV.read wastes a lot of memory. Use CSV.foreach'])
      expect(cop.offenses.size).to eq(1)
      expect(cop.highlights).to eq(['CSV.read("01.csv")'])
    end
  end

  context 'Does not use CSV.read' do
    it 'Does not raise ForbidCsvRead' do
      inspect_source(cop, 'CSV.open("01.csv")')
      expect(cop.messages)
        .to eq([])
      expect(cop.offenses.size).to eq(0)
      expect(cop.highlights).to eq([])
    end
  end

  context 'receiver is nil' do
    it 'Does not raise ForbidCsvRead' do
      inspect_source(cop, 'p "abc"')
      expect(cop.messages)
        .to eq([])
      expect(cop.offenses.size).to eq(0)
      expect(cop.highlights).to eq([])
    end
  end
end
