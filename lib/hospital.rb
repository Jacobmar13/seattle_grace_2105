require './lib/doctor'

class Hospital
    attr_reader :name, :chief_of_surgery,
                :doctors

    def initialize(name, chief_of_surgery, doctors)
        @name = name
        @chief_of_surgery = chief_of_surgery
        @doctors = doctors
    end

    def salaries
        salaries = []
    end

    def lowest_paid_doctor
        lowest_paid_doctor = ""
        @doctors.each do |doctor|
            if doctor.salary < salaries.each
                lowest_paid_doctor + doctor.name
            end
        end
        lowest_paid_doctor
    end

    def specialties
        specialties = []
        @doctors.each do |specialty|
           specialties << specialty.specialty
        end
        specialties
    end

    def total_salary
        total_salary = 0
        @doctors.each do |salary|
            total_salary += salary.salary
        end
        total_salary
    end
end