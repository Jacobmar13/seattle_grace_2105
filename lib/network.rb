require './lib/hospital'

class Network
    attr_reader :name, :hospitals

    def initialize(name)
        @name = name
        @hospitals = []
    end

    def add_hospital(hospital)
        @hospitals << hospital
    end

    def highest_paid_doctor
    end

    def doctors_by_hospital
    end

    # Iteration 4
    def doctors_by_specialty
    end

    def average_doctors_salary
    end
end