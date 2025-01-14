require './lib/doctor'
require './lib/hospital'
require './lib/network'

# Iteration 3
RSpec.describe 'Network' do
    context '(Iteration 3)' do
        before do
            @gsmn = Network.new("Greater Seattle Medical Network")
            @meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
            @alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
            @seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [@meredith, @alex])
            @miranda = Doctor.new({name: "Miranda Bailey", specialty: "General Surgery", education: "Stanford University", salary: 150_000})
            @derek = Doctor.new({name: "Derek Sheperd", specialty: "Neurosurgery", education: "University of Pennsylvania", salary: 125_000})
            @grey_sloan = Hospital.new("Grey Sloan Memorial", "Larry Maxwell", [@miranda, @derek])
        end

        it 'exists' do
            expect(@gsmn).to be_a(Network)
        end

        it 'has name' do
            expect(@gsmn.name).to eq("Greater Seattle Medical Network")
        end

        it 'has hospitals' do
            expect(@gsmn.hospitals).to eq([])
        end

        it 'can add hospitals' do
            expect(@gsmn.add_hospital(@seattle_grace)).to eq(@gsmn.hospitals)
            expect(@gsmn.add_hospital(@grey_sloan)).to eq(@gsmn.hospitals)
        end

        it 'can check if it has hospitals again' do
            @gsmn.add_hospital(@seattle_grace)
            @gsmn.add_hospital(@grey_sloan)

            expect(@gsmn.hospitals).to eq([@seattle_grace, @grey_sloan])
        end

        xit 'has a highest paid doctor' do
            @gsmn.add_hospital(@seattle_grace)
            @gsmn.add_hospital(@grey_sloan)

            expect(@gsmn.highest_paid_doctor).to eq(@miranda)
        end

        xit 'can tell doctors by hospital' do
            @gsmn.add_hospital(@seattle_grace)
            @gsmn.add_hospital(@grey_sloan)

            expect(@gsmn.doctors_by_hospital).to eq({
                @seattle_grace => ["Meredith Grey", "Alex Karev"],
                @grey_sloan => ["Miranda Bailey", "Derek Sheperd"]
                })
        end
    end

    # Iteration 4
    context '(Iteration 4)' do
        before do
            @gsmn = Network.new("Greater Seattle Medical Network")
            @meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
            @alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
            @seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [@meredith, @alex])
            @miranda = Doctor.new({name: "Miranda Bailey", specialty: "General Surgery", education: "Stanford University", salary: 150_000})
            @derek = Doctor.new({name: "Derek Sheperd", specialty: "Neurosurgery", education: "University of Pennsylvania", salary: 125_000})
            @grey_sloan = Hospital.new("Grey Sloan Memorial", "Larry Maxwell", [@miranda, @derek])
            @gsmn.add_hospital(@seattle_grace)
            @gsmn.add_hospital(@grey_sloan)
        end

        xit 'can tell doctors by specialty' do
            expect(@gsmn.doctors_by_specialty).to eq({
                "General Surgery" => ["Meredith Grey", "Miranda Bailey"],
                "Pediatric Surgery" => ["Alex Karev"],
                "Neurosurgery" => ["Derek Sheperd"]
                })
        end

        xit 'can give average doctors salary' do
            expect(@gsmn.average_doctors_salary).to eq(116250.00)
        end
    end
end