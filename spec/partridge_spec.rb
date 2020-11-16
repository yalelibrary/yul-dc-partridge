# frozen_string_literal: true

RSpec.describe Partridge::Pairtree do
  it 'has a version number' do
    expect(Partridge::VERSION).not_to be nil
  end

  it 'takes an oid and gives a path with the correct prefix' do
    expect(described_class.oid_to_pairtree(1_000_000)).to eq('00/10/00/00')
    expect(described_class.oid_to_pairtree(1_000_001)).to eq('01/10/00/00')
    expect(described_class.oid_to_pairtree(1_000_002)).to eq('02/10/00/00')
    expect(described_class.oid_to_pairtree(1_000_003)).to eq('03/10/00/00')
  end

  it 'takes oids of varying lengths and puts them in predictable places' do
    expect(described_class.oid_to_pairtree(1000)).to eq('00/10/00')
    expect(described_class.oid_to_pairtree(12_345_600)).to eq('00/12/34/56/00')
    expect(described_class.oid_to_pairtree(123_456_700)).to eq('00/12/34/56/70')
    expect(described_class.oid_to_pairtree(1_234_567_800)).to eq('00/12/34/56/78/00')
    expect(described_class.oid_to_pairtree(1_234_567_890)).to eq('90/12/34/56/78/90')
    expect(described_class.oid_to_pairtree(1_014_543)).to eq('43/10/14/54')
  end

  it 'returns a pair tree for single-digit oids' do
    expect(described_class.oid_to_pairtree(3)).not_to eq nil
    expect(described_class.oid_to_pairtree(3)).to eq '03'
  end
end
