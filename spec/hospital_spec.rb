require './lib/doctor'
require './lib/hospital'

# Iteration 2
RSpec.describe 'Hospital' do
    context '(Iteration 2)' do
        before do
            @meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
            @alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
            @seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [@meredith, @alex])
        end

        it 'exists' do
            expect(@seattle_grace).to be_a(Hospital)
        end

        it 'has name' do
            expect(@seattle_grace.name).to eq("Seattle Grace")
        end

        it 'has chief of surgery' do
            expect(@seattle_grace.chief_of_surgery).to eq("Richard Webber")
        end

        it 'has doctors' do
            expect(@seattle_grace.doctors).to eq([@meredith, @alex])
        end

        it 'has a total salary' do
            expect(@seattle_grace.total_salary).to eq(190000)
        end

        it 'has a lowest paid doctor' do
            expect(@seattle_grace.lowest_paid_doctor).to eq("Alex Karev")
        end

        it 'has specialties' do
            expect(@seattle_grace.specialties).to eq(["General Surgery", "Pediatric Surgery"])
        end
    end
end