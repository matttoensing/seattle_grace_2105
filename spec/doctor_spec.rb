require 'rspec'
require './lib/doctor'

RSpec.describe Doctor do
  it 'exists' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

    expect(meredith).to be_an_instance_of(Doctor)
  end

  it 'has a name' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

    expect(meredith.name).to eq("Meredith Grey")
  end

  it 'has a specialty' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

    expect(meredith.specialty).to eq("General Surgery")
  end

  it 'has an education and salary' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

    expect(meredith.education).to eq("Harvard University")
    expect(meredith.salary).to eq(100_000)
  end
end
