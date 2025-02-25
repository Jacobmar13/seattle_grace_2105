require './lib/doctor'
# Iteration 1
RSpec.describe 'Doctor' do
    context '(Iteration 1)' do
        it 'exists' do
            meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

            expect(meredith).to be_a(Doctor)
        end

        it 'has a name' do
            meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
            
            expect(meredith.name).to eq("Meredith Grey")
        end

        it 'has a specialty' do
            meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
            
            expect(meredith.specialty).to eq("General Surgery")
        end

        it 'has an education' do
            meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
            
            expect(meredith.education).to eq("Harvard University")
        end

        it 'has a salary' do
            meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
            
            expect(meredith.salary).to eq(100000)
        end
    end
end