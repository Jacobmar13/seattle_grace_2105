class Doctor
    attr_reader :name, :specialty,
                :education, :salary

    def initialize(hash)
        @hash = hash
        @name = @hash[:name]
        @specialty = @hash[:specialty]
        @education = @hash[:education]
        @salary = @hash[:salary]
    end
end